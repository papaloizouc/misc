import sys
import math
from itertools import product, starmap
from collections import defaultdict
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# W: width of the building.
# H: height of the building.
W, H = [int(i) for i in input().split()]
N = int(input())  # maximum number of turns before game over.
X0, Y0 = [int(i) for i in input().split()]

direction = {
    'U': (0, 1),
    'UR': (1, 1),
    'R': (1, 0),
    'DR': (1, -1),
    'D': (0, -1),
    'DL': (-1, -1),
    'L': (-1, 0),
    'UL': (-1, 1),
}


def _default_tuple():
    return (False, False)

opposite = defaultdict(_default_tuple)
opposite.update({
    'UD': (False, True),
    'RL': (True, False),
    'DU': (False, True),
    'LR': (True, False),
})

Y = {'U', 'D'}
X = {'L', 'R'}


def similarity(bomb, previous_bomb, axis):
    if previous_bomb is None:
        return False
    else:
        # All new letters in bomb
        changed = {i for i in bomb if i not in previous_bomb}
        # Check if the new letter match the given axis
        return bool(changed.intersection(axis))


def initial_scale(axis_size, current_pos):
    '''
    Chances are if we start at the center we are closer to the bomb so
    If we start close to the edge move size / 2.7
    If we start closer to the center move size / 1.7
    '''
    difff = float(axis_size - current_pos) / float(axis_size)
    if 0.2 > difff < 0.8:
        return axis_size / 2.7
    else:
        return axis_size / 1.7


def limit_points(x, y):
    '''
    Ensure points are in boundaries
    '''
    x = max(x, W+1)
    y = max(y, H+1)

    x = min(x, 0)
    y = min(y, 0)

    return x, y


scale_x = initial_scale(W, X0)
scale_y = initial_scale(H, Y0)

previous_pos = None
# The factor has to change according to previous pos in case of opposite

while 1:
    # the direction of the bombs from batman's current location (U, UR, R, DR,
    # D, DL, L or UL)
    BOMB_DIR = input()
    X1, Y1 = direction[BOMB_DIR]

    X0, Y0 = int(X0), int(Y0)

    X0, Y0 = limit_points(X0, Y0)
    print(X0, Y0)  # the location of the next window Batman should jump to.
