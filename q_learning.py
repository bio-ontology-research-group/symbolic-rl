import matplotlib
import gym
import gym_vgdl
import numpy as np

from gym import wrappers
# from play.gym_recording.wrappers import TraceRecordingWrapper
# from play.gym_recording import playback
from gym_recording.wrappers import trace_recording

import time

# Q-learning
import itertools
import pandas as pd
import sys
import os.path

from collections import defaultdict
from lib import plotting

# ASP conversion
from lib import plotting, py_asp, helper, induction, abduction

import pickle
# env = gym.make('vgdl_aliens-v0')
# env = gym.make('vgdl_boulderdash-v0')
# env = gym.make('vgdl_portals-v0')
# env = gym.make('vgdl_survivezombies-v0')

# env = gym.make('vgdl_aaa_field-v0')
# env = gym.make('vgdl_aaa_square-v0')
# trace_path = os.path.dirname(ospath.realpath(__file__))
# env = TraceRecordingWrapper(env, trace_path)
# env = gym.make('vgdl_aaa3-v0')

# env = gym.make('vgdl_aaa_L_shape-v0')
# env = gym.make('vgdl_aaa_small-v0')

TIME_RANGE = 100

# TIME_RANGE = 400

base_dir = os.path.dirname(os.path.abspath(__file__))

def make_epsilon_greedy_policy(Q, epsilon, nA):
    def policy_fn(observation, episodes):
        new_epsilon = epsilon*(1/(episodes+1))
        A = np.ones(nA, dtype=float)* new_epsilon/nA
        best_action = np.argmax(Q[observation])
        A[best_action] += (1.0 - new_epsilon)
        return A
    return policy_fn

def convert_state(x, y):
    return (x-1)*19+y

def q_learning(env, num_episodes, discount_factor=0.9, alpha=0.5, epsilon=0.1):
    """
    Args:
        alpha: TD learning rate
    """

    Q = defaultdict(lambda: np.zeros(env.action_space.n))

    stats = plotting.EpisodeStats(
        episode_lengths=np.zeros(num_episodes),
        episode_rewards=np.zeros(num_episodes))

    policy = make_epsilon_greedy_policy(Q, epsilon, env.action_space.n)
    for i_episode in range(num_episodes):
        # print("------------------------------")
        if(i_episode+1) % 100 == 0:
            print("\rEpisode {}/{}.".format(i_episode+1, num_episodes), end="")
            sys.stdout.flush()

        # Reset the env and pick the first action
        state = env.reset()
        state_int = convert_state(state[1], state[0])

        previous_state = state
        # for t in itertools.count():
        for t in range(TIME_RANGE):
            env.render()
            # time.sleep(0.1)
            # Take a step
            action_probs = policy(state_int, i_episode)

            action = np.random.choice(np.arange(len(action_probs)), p=action_probs)
            # action = env.action_space.sample()

            # print("---------------------------------")
            # 0: UP
            # 1: DOWN
            # 2: LEFT
            # 3: RIGHT

            next_state, reward, done, _ = env.step(action)
            if done:
                reward = 100
            else:
                reward = reward - 1

            previous_state = next_state

            next_state_int = convert_state(next_state[1], next_state[0])

            # Update stats
            stats.episode_rewards[i_episode] += reward
            stats.episode_lengths[i_episode] = t

            # TD Update
            best_next_action = np.argmax(Q[next_state_int])

            td_target = reward + discount_factor*Q[next_state_int][best_next_action]
            td_delta = td_target - Q[state_int][action]

            Q[state_int][action] += alpha * td_delta

            if done:
                break

            state = next_state
            state_int = next_state_int

    # Display the final Q-Table
    # for key, value in enumerate(Q.items()):
    #     print(key)
    #     print(value)
    #     print("\n")

    return Q, stats

# env = gym.make('vgdl_experiment3.5-v0')

# Q, stats = q_learning(env, 50)

# plotting.plot_episode_stats(stats)
# plotting.plot_episode_stats_simple(stats)
