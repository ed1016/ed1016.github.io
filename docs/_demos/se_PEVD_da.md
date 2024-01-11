---
title: "Demonstration"
collection: demos
permalink: demos/se_PEVD_da/
redirect_from: 
  - /se_PEVD_da/
  - /se_PEVD_da
subtitle: "Speech Enhancement in Distributed Microphone Arrays Using Polynomial Eigenvalue Decomposition"
script: '<script type="text/javascript" src="../../assets/js/custom.js"></script><script type="text/javascript">jQuery(document).ready(function() {jQuery(".player").trackSwitch({spacebar: true});});var settings = {onlyradiosolo: true,repeat: true,};$(".player").trackSwitch(settings);</script>'
headscript: '<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" /><link rel="stylesheet" href="../../assets/css/trackswitch.min.css" />'
---
This demonstration provides listening examples of speech enhancement in distributed microphone arrays using a PEVD algorithm presented in [this paper](https://ed1016.github.io/publication/2022_08_29_EUSIPCO).

In all cases, results are compared against
- the best and worst raw microphone signals
- the best and worst delay-and-sum beamformers (DSB)
- the best and worst minimum variance distortionless response (MVDR) beamformers 
- the PEVD applied to all 6 raw microphone signals
- the proposed method applying PEVD to the 3 DSBs.

This page was generated using <b> trackswitch.js </b> in [1].


## Experiment 1
### Anechoic recordings 
<div class="tab" style="min-width: 600px">
  <button class="tablinks active" onclick="openTab(event, 'White')">White</button>
  <button class="tablinks" onclick="openTab(event, 'Babble')">Babble</button>
  <button class="tablinks" onclick="openTab(event, 'Speech-shaped noise')">Speech-shaped</button>
</div>

<div id="White" class="tabcontent" style="display:block">
  <div class="player">
  <p>
      Diffuse white Gaussian noise at 0 dB SNR.
  </p>
  <!-- <img src="mix.png" class="seekable"> -->
  <ts-track title="Raw (best)">
      <ts-source src="../../files/se_PEVD_da/audio/white_0_mix_best.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Raw (worst)">
      <ts-source src="../../files/se_PEVD_da/audio/white_0_mix_worst.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="DSB (best)">
      <ts-source src="../../files/se_PEVD_da/audio/white_0_dsb_best.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="DSB (worst)" style="overflow: hidden">
      <ts-source src="../../files/se_PEVD_da/audio/white_0_dsb_worst.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="MVDR (best)">
      <ts-source src="../../files/se_PEVD_da/audio/white_0_mvdr_best.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="MVDR (worst)">
      <ts-source src="../../files/se_PEVD_da/audio/white_0_mvdr_worst.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="PEVD full">
      <ts-source src="../../files/se_PEVD_da/audio/white_0_pevd_full.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="PEVD proposed">
      <ts-source src="../../files/se_PEVD_da/audio/white_0_pevd.wav" type="audio/wav"></ts-source>
  </ts-track>
</div>
</div>

<div id="Babble" class="tabcontent" style="display:none">
  <div class="player">
  <p>
      Diffuse babble noise at 0 dB SNR.
  </p>
  <!-- <img src="mix.png" class="seekable"> -->
  <ts-track title="Raw (best)">
      <ts-source src="../../files/se_PEVD_da/audio/babble_0_raw_best.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Raw (worst)">
      <ts-source src="../../files/se_PEVD_da/audio/babble_0_raw_worst.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="DSB (best)">
      <ts-source src="../../files/se_PEVD_da/audio/babble_0_dsb_best.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="DSB (worst)" style="overflow: hidden">
      <ts-source src="../../files/se_PEVD_da/audio/babble_0_dsb_worst.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="MVDR (best)">
      <ts-source src="../../files/se_PEVD_da/audio/babble_0_mvdr_best.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="MVDR (worst)">
      <ts-source src="../../files/se_PEVD_da/audio/babble_0_mvdr_worst.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="PEVD full">
      <ts-source src="../../files/se_PEVD_da/audio/babble_0_pevd_full.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="PEVD proposed">
      <ts-source src="../../files/se_PEVD_da/audio/babble_0_pevd.wav" type="audio/wav"></ts-source>
  </ts-track>
</div>
</div>

<div id="Speech-shaped noise" class="tabcontent" style="display:none">
  <div class="player">
  <p>
      Diffuse speech-shaped noise at 0 dB SNR.
  </p>
  <!-- <img src="mix.png" class="seekable"> -->
  <ts-track title="Raw (best)">
      <ts-source src="../../files/se_PEVD_da/audio/speech-shaped_0_raw_best.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Raw (worst)">
      <ts-source src="../../files/se_PEVD_da/audio/speech-shaped_0_raw_worst.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="DSB (best)">
      <ts-source src="../../files/se_PEVD_da/audio/speech-shaped_0_dsb_best.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="DSB (worst)" style="overflow: hidden">
      <ts-source src="../../files/se_PEVD_da/audio/speech-shaped_0_dsb_worst.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="MVDR (best)">
      <ts-source src="../../files/se_PEVD_da/audio/speech-shaped_0_mvdr_best.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="MVDR (worst)">
      <ts-source src="../../files/se_PEVD_da/audio/speech-shaped_0_mvdr_worst.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="PEVD full">
      <ts-source src="../../files/se_PEVD_da/audio/speech-shaped_0_pevd_full.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="PEVD proposed">
      <ts-source src="../../files/se_PEVD_da/audio/speech-shaped_0_pevd.wav" type="audio/wav"></ts-source>
  </ts-track>
</div>
</div>

<br>

### Reverberant recordings (T60=400 ms)
<div class="tab" style="min-width: 600px">
  <button class="tablinks2 active" onclick="openTab2(event, 'Whitereverb')">White</button>
  <button class="tablinks2" onclick="openTab2(event, 'Babblereverb')">Babble</button>
  <button class="tablinks2" onclick="openTab2(event, 'Speech-shaped noisereverb')">Speech-shaped</button>
</div>

<div id="Whitereverb" class="tabcontent2" style="display:block">
  <div class="player">
  <p>
      Diffuse white Gaussian noise at 0 dB SNR.
  </p>
  <!-- <img src="raw.png" class="seekable"> -->
  <ts-track title="Raw (best)">
      <ts-source src="../../files/se_PEVD_da/audio/reverb_400_white_0_raw_best.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Raw (worst)">
      <ts-source src="../../files/se_PEVD_da/audio/reverb_400_white_0_raw_worst.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="DSB (best)">
      <ts-source src="../../files/se_PEVD_da/audio/reverb_400_white_0_dsb_best.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="DSB (worst)" style="overflow: hidden">
      <ts-source src="../../files/se_PEVD_da/audio/reverb_400_white_0_dsb_worst.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="MVDR (best)">
      <ts-source src="../../files/se_PEVD_da/audio/reverb_400_white_0_mvdr_best.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="MVDR (worst)">
      <ts-source src="../../files/se_PEVD_da/audio/reverb_400_white_0_mvdr_worst.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="PEVD full">
      <ts-source src="../../files/se_PEVD_da/audio/reverb_400_white_0_pevd_full.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="PEVD proposed">
      <ts-source src="../../files/se_PEVD_da/audio/reverb_400_white_0_pevd.wav" type="audio/wav"></ts-source>
  </ts-track>
</div>
</div>

<div id="Babblereverb" class="tabcontent2" style="display:none">
  <div class="player">
  <p>
      Diffuse babble noise at 0 dB SNR.
  </p>
  <!-- <img src="raw.png" class="seekable"> -->
  <ts-track title="Raw (best)">
      <ts-source src="../../files/se_PEVD_da/audio/reverb_400_babble_0_raw_best.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Raw (worst)">
      <ts-source src="../../files/se_PEVD_da/audio/reverb_400_babble_0_raw_worst.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="DSB (best)">
      <ts-source src="../../files/se_PEVD_da/audio/reverb_400_babble_0_dsb_best.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="DSB (worst)" style="overflow: hidden">
      <ts-source src="../../files/se_PEVD_da/audio/reverb_400_babble_0_dsb_worst.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="MVDR (best)">
      <ts-source src="../../files/se_PEVD_da/audio/reverb_400_babble_0_mvdr_best.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="MVDR (worst)">
      <ts-source src="../../files/se_PEVD_da/audio/reverb_400_babble_0_mvdr_worst.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="PEVD full">
      <ts-source src="../../files/se_PEVD_da/audio/reverb_400_babble_0_pevd_full.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="PEVD proposed">
      <ts-source src="../../files/se_PEVD_da/audio/reverb_400_babble_0_pevd.wav" type="audio/wav"></ts-source>
  </ts-track>
</div>
</div>

<div id="Speech-shaped noisereverb" class="tabcontent2" style="display:none">
  <div class="player">
  <p>
      Diffuse speech-shaped noise at 0 dB SNR.
  </p>
  <!-- <img src="mix.png" class="seekable"> -->
  <ts-track title="Raw (best)">
      <ts-source src="../../files/se_PEVD_da/audio/reverb_400_speech-shaped_0_raw_best.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Raw (worst)">
      <ts-source src="../../files/se_PEVD_da/audio/reverb_400_speech-shaped_0_raw_worst.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="DSB (best)">
      <ts-source src="../../files/se_PEVD_da/audio/reverb_400_speech-shaped_0_dsb_best.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="DSB (worst)" style="overflow: hidden">
      <ts-source src="../../files/se_PEVD_da/audio/reverb_400_speech-shaped_0_dsb_worst.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="MVDR (best)">
      <ts-source src="../../files/se_PEVD_da/audio/reverb_400_speech-shaped_0_mvdr_best.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="MVDR (worst)">
      <ts-source src="../../files/se_PEVD_da/audio/reverb_400_speech-shaped_0_mvdr_worst.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="PEVD full">
      <ts-source src="../../files/se_PEVD_da/audio/reverb_400_speech-shaped_0_pevd_full.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="PEVD proposed">
      <ts-source src="../../files/se_PEVD_da/audio/reverb_400_speech-shaped_0_pevd.wav" type="audio/wav"></ts-source>
  </ts-track>
</div>
</div>

<br>

## Experiment 2: Mis-steering
<div class="tab" style="min-width: 600px">
  <button class="tablinks3 active" onclick="openTab3(event, 'Anechoic')">Anechoic</button>
  <button class="tablinks3" onclick="openTab3(event, 'T60=400')">T60=400 ms</button>
</div>

<div id="Anechoic" class="tabcontent3" style="display:block">
  <div class="player">
  <p>
      Speech-shaped white Gaussian noise at 0 dB SNR with 90&deg; mis-steering.
  </p>
  <!-- <img src="raw.png" class="seekable"> -->
  <ts-track title="Raw (best)">
      <ts-source src="../../files/se_PEVD_da/audio/mis_90_speech-shaped_0_raw_best.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Raw (worst)">
      <ts-source src="../../files/se_PEVD_da/audio/mis_90_speech-shaped_0_raw_worst.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="DSB (best)">
      <ts-source src="../../files/se_PEVD_da/audio/mis_90_speech-shaped_0_dsb_best.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="DSB (worst)" style="overflow: hidden">
      <ts-source src="../../files/se_PEVD_da/audio/mis_90_speech-shaped_0_dsb_worst.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="MVDR (best)">
      <ts-source src="../../files/se_PEVD_da/audio/mis_90_speech-shaped_0_mvdr_best.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="MVDR (worst)">
      <ts-source src="../../files/se_PEVD_da/audio/mis_90_speech-shaped_0_mvdr_worst.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="PEVD full">
      <ts-source src="../../files/se_PEVD_da/audio/mis_90_speech-shaped_0_pevd_full.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="PEVD proposed">
      <ts-source src="../../files/se_PEVD_da/audio/mis_90_speech-shaped_0_pevd.wav" type="audio/wav"></ts-source>
  </ts-track>
</div>
</div>

<div id="T60=400" class="tabcontent3" style="display:none">
  <div class="player">
  <p>
      Speech-shaped white Gaussian noise at 0 dB SNR with 90&deg; mis-steering.
  </p>
  <!-- <img src="raw.png" class="seekable"> -->
  <ts-track title="Raw (best)">
      <ts-source src="../../files/se_PEVD_da/audio/mis_90_reverb_400_speech-shaped_0_raw_best.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Raw (worst)">
      <ts-source src="../../files/se_PEVD_da/audio/mis_90_reverb_400_speech-shaped_0_raw_worst.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="DSB (best)">
      <ts-source src="../../files/se_PEVD_da/audio/mis_90_reverb_400_speech-shaped_0_dsb_best.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="DSB (worst)" style="overflow: hidden">
      <ts-source src="../../files/se_PEVD_da/audio/mis_90_reverb_400_speech-shaped_0_dsb_worst.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="MVDR (best)">
      <ts-source src="../../files/se_PEVD_da/audio/mis_90_reverb_400_speech-shaped_0_mvdr_best.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="MVDR (worst)">
      <ts-source src="../../files/se_PEVD_da/audio/mis_90_reverb_400_speech-shaped_0_mvdr_worst.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="PEVD full">
      <ts-source src="../../files/se_PEVD_da/audio/mis_90_reverb_400_speech-shaped_0_pevd_full.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="PEVD proposed">
      <ts-source src="../../files/se_PEVD_da/audio/mis_90_reverb_400_speech-shaped_0_pevd.wav" type="audio/wav"></ts-source>
  </ts-track>
</div>
</div>

### References
[1] &emsp; N. Werner, S. Balke, F-R Stöter, M. Müller, B. Edler "trackswitch.js: A Versatile Web-Based Audio Player for Presenting Scientifc Results." <i> 3rd Web Audio Conference</i>, London, UK. 2017.




