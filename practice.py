import gym
import gym_vgdl
import numpy as np

import matplotlib.pyplot as plt
from IPython import display
from controller import keyboard_activate
from gym import wrappers

import time

def convert_state(x, y):
    return (y-1)*19+x;

env = gym.make('vgdl_aaa1-v0')

done = False
count = 0
sum_score = 0

s = env.reset()
print("init state int ", convert_state(s[0], s[1]))
print('init_state: {} example action: {}'.format(s, env.action_space.sample()))
print("Space size is ", env.observation_space)

# for i in range(2000):
while not done:
    env.render()
    # time.sleep(0.01)
    count+=1
    action = env.action_space.sample()

    next_state, reward, done, _ = env.step(action)
    state_int = convert_state(next_state[0], next_state[1])
    sum_score += reward

    if done:
        break
