import pygame

pygame.init()

pygame.mixer.music.load('aposentei.mp3')

pygame.mixer.music.play()

pygame.event.wait()