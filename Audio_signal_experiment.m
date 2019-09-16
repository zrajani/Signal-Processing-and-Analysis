% Code Abstract: Performing and Experimenting different operations on Audio
% Signals
% Author: Zain Rajani
% Creation Date: September 15, 2019

%% Initial Screen Commands

clear all;           % Clear the memory of MATLAB e.g. Variables, Workspace,etc.
close all;           % Close any figures or any external window currently being open
clc;                 % Clear the command window

%% Display a Welcome Message 
% Any commands can be displayed on the command window using 'disp' command 
disp('Basic Audio Signal Operation')

%% Reading/ Inputting Audio files in MATLAB
% For any audio files to be as input in MATLAB it should be in the
% following formats such as .mp3, .mp4, .mpeg, .wav, .flac, .au, etc.
% The function used to input the audio files could be audioread or load
% function use help function_name for more details 
% For the scope of this code we will take two audio signals namely audio 1
% and audio 2 which will be female sound and male sound which are inbuilt
% in matlab
audio_file_1='FemaleSpeech-16-8-mono-3secs.wav';
audio_file_2='SpeechDFT-16-8-mono-5secs.wav';
[audio_1_data, audio_1_samplef]=audioread(audio_file_1);
[audio_2_data, audio_2_samplef]=audioread(audio_file_2);

%% Getting Information about the audio signals we have inputted
% Information about audio signal can be obtained using 'audioinfo' command
% Reading and storing information of the audio files

audio_1_info= audioinfo(audio_file_1);
audio_2_info= audioinfo(audio_file_2);

%% Playing the audio files using the commands 
% To play the audio that we have taken as input we create a object for
% audioplayer with data and sampling frequency and then use the play
% function

play_audio_1=audioplayer(audio_1_data, audio_1_samplef);
play(play_audio_1)
pause (audio_1_info.Duration) % Halts the program until the audio is over
play_audio_2=audioplayer(audio_2_data, audio_2_samplef);
play(play_audio_2)
pause (audio_2_info.Duration)

% To play/convert the matrix data to sound use the command sound giving
% just the data or give the sampling rate if you wish to

sound (audio_1_data);
pause (audio_1_info.Duration)
sound (audio_2_data);
pause (audio_2_info.Duration)
