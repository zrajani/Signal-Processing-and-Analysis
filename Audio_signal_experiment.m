% Code Abstract: Performing and Experimenting different operations on Audio 
%Signal
% Author: Zain Rajani
% Creation Date: September 15, 2019
% Last Modified: September 19, 2019

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
disp('Information of the audio signal')
disp('Female Voice Information: ')  
audio_1_info= audioinfo(audio_file_1); % To view the information when the script is running remove the semi-colon
disp('Male Voice Information: ')
audio_2_info= audioinfo(audio_file_2); % To view the information when the script is running remove the semi-colon

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

%% Plotting of audio signal

t1=0:seconds(1/audio_1_samplef):seconds(audio_1_info.Duration);
t1 = t1(1:end-1);

t2=0:seconds(1/audio_2_samplef):seconds(audio_2_info.Duration);
t2 = t2(1:end-1);

figure
subplot(2,1,1)
plot(t1,audio_1_data)
title('Female Voice Data')
xlabel('Time')
ylabel('Audio Signal')


subplot(2,1,2)
plot(t2,audio_2_data,'color','r')
title('Male Voice Data')
xlabel('Time')
ylabel('Audio Signal')

%% Increasing the volume of audio signal in MATLAB
% In this part of the experiment we will try to increase and decrease the
% the volume of the audio signal.
% In an event to increase the sound of the audio if the data of the signal
% is multiplied by a factor it will in turn increase the amplitude (data)
% value of the signal and the opposite goes to decrease the volume of the
% audio signal
% This operation will be performed just on one signal instead of both for
% illustration purposes

%original audio
sound (audio_1_data);
pause (audio_1_info.Duration)

vol_dec_factor= audio_1_data/10; % This will decrease the volume by 10
vol_inc_factor= audio_1_data*5; % This will increase the volume 5 times

dec_play=audioplayer(vol_dec_factor,audio_1_samplef);
inc_play=audioplayer(vol_inc_factor,audio_1_samplef);

%Play the decreased volume audio signal
play(dec_play); 
pause (audio_1_info.Duration);

%Play the increased volume audio signal 
play(inc_play);
pause (audio_1_info.Duration);

%% Flip the audio signals
