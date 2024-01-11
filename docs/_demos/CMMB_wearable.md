---
title: "Demonstration"
collection: demos
permalink: demos/CMMB_wearable
redirect_from: 
  - /CMMB-wearable/
  - /CMMB-wearable
subtitle: "Model-based Beamforming for Wearable Microphone Arrays"
script: '<script type="text/javascript" src="../../assets/js/custom.js"></script><script type="text/javascript">jQuery(document).ready(function() {jQuery(".player").trackSwitch({spacebar: true});});var settings = {onlyradiosolo: true,repeat: true,};$(".player").trackSwitch(settings);</script>'
headscript: '<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" /><link rel="stylesheet" href="../../assets/css/trackswitch.min.css" />'
---
This page provides listening examples for the evaluation of a MPDR beamformer using a compact model sample covariance matrix (SCM) estimation method, using wearable arrays and presented in [this paper](https://ed1016.github.io/publication/2021_08_23_EUSIPCO).

The simulation experiment considers a dialogue scenario, where a desired speaker is located in front of the listener, while two interfering sources are located on their left, at 45˚ and 90˚ respectively. Babble noise is simulated as originating from 16 azimuth directions, and white Gaussian sensor noise is added to the signals.

The source speech samples are concatenations of anechoic recordings from the the TIMIT [1] database. The signals are simulated at the array through convolution of the source signals with body-related transfer functions from [2].

The beamformers used in the comparison include
- a passthrough system at a pair of in-ear microphones
- an oracle MPDR beamformer having access to the target clean signal
- a classical adaptive MPDR beamformer
- an MPDR beamformer using the compact model SCM estimation from [3].

The audio player is built using the trackswitch.js tool in [4].

## Audio examples
### Varying interference level

<div class="tab" style="min-width: 600px">
  <button class="tablinks active" onclick="openTab(event, '-5dBSIR')">-5 dB SIR</button>
  <button class="tablinks" onclick="openTab(event, '0dBSIR')">0 dB SIR</button>
  <button class="tablinks" onclick="openTab(event, '5dBSIR')">5 dB SIR</button>
</div>

<div id="-5dBSIR" class="tabcontent" style="display: block;">
  <div class="player">
    <p>
      Speech corrupted by interferences at -5 dB SIR, with 20 dB SNR sensor noise, 20 dB SNR babble noise.
    </p>
    <img class="seekable" data-style="display:-webkit-box !important;" src="../../files/CMMB_wearable/audio/Experiment1/target.png">
    <ts-track title="Target (clean)" style="list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/target.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/target.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Passthrough" style="list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySIR/22/1_passthrough.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySIR/22/1_passthrough.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Cap: Oracle" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap/varySIR/22/5_Oracle.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap/varySIR/22/5_Oracle.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Cap: Adaptive MPDR" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap/varySIR/22/4_MPDR.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap/varySIR/22/4_MPDR.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Cap: Compact Model MPDR" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap/varySIR/22/2_Proposed.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap/varySIR/22/2_Proposed.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Chest: Oracle" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest/varySIR/22/5_Oracle.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest/varySIR/22/5_Oracle.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Chest: Adaptive MPDR" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest/varySIR/22/4_MPDR.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest/varySIR/22/4_MPDR.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Chest: Compact Model MPDR" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest/varySIR/22/2_Proposed.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest/varySIR/22/2_Proposed.wav" type="audio/wav"></ts-source>
    </ts-track>
      <ts-track title="BTE: Oracle" style="background-color: #0072BD;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySIR/22/5_Oracle.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySIR/22/5_Oracle.wav" type="audio/wav"></ts-source>
      </ts-track>
      <ts-track title="BTE: Adaptive MPDR" style="background-color: #0072BD;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySIR/22/4_MPDR.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySIR/22/4_MPDR.wav" type="audio/wav"></ts-source>
      </ts-track>
      <ts-track title="BTE: Compact Model MPDR" style="background-color: #0072BD;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySIR/22/2_Proposed.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySIR/22/2_Proposed.wav" type="audio/wav"></ts-source>
      </ts-track>
        <ts-track title="Glasses: Oracle" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses/varySIR/22/5_Oracle.png">
          <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses/varySIR/22/5_Oracle.wav" type="audio/wav"></ts-source>
        </ts-track>
        <ts-track title="Glasses: Adaptive MPDR" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses/varySIR/22/4_MPDR.png">
          <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses/varySIR/22/4_MPDR.wav" type="audio/wav"></ts-source>
        </ts-track>
        <ts-track title="Glasses: Compact Model MPDR" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses/varySIR/22/2_Proposed.png">
          <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses/varySIR/22/2_Proposed.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Cap + BTE: Oracle" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap+/varySIR/22/5_Oracle.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap+/varySIR/22/5_Oracle.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Cap + BTE: Adaptive MPDR" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap+/varySIR/22/4_MPDR.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap+/varySIR/22/4_MPDR.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Cap + BTE: Compact Model MPDR" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap+/varySIR/22/2_Proposed.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap+/varySIR/22/2_Proposed.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Chest + BTE: Oracle" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest+/varySIR/22/5_Oracle.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest+/varySIR/22/5_Oracle.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Chest + BTE: Adaptive MPDR" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest+/varySIR/22/4_MPDR.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest+/varySIR/22/4_MPDR.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Chest + BTE: Compact Model MPDR" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest+/varySIR/22/2_Proposed.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest+/varySIR/22/2_Proposed.wav" type="audio/wav"></ts-source>
    </ts-track>
        <ts-track title="Glasses + BTE: Oracle" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses/varySIR/22/5_Oracle.png">
          <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySIR/22/5_Oracle.wav" type="audio/wav"></ts-source>
        </ts-track>
        <ts-track title="Glasses + BTE: Adaptive MPDR" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySIR/22/4_MPDR.png">
          <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySIR/22/4_MPDR.wav" type="audio/wav"></ts-source>
        </ts-track>
        <ts-track title="Glasses + BTE: Compact Model MPDR" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySIR/22/2_Proposed.png">
          <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySIR/22/2_Proposed.wav" type="audio/wav"></ts-source>
    </ts-track>
  </div>
</div>
<div id="0dBSIR" class="tabcontent" style="display:none">
  <div class="player">
    <p>
      Speech corrupted by interferences at 0 dB SIR, with 20 dB SNR sensor noise, 20 dB SNR babble noise.
    </p>
    <img class="seekable" data-style="display:-webkit-box !important;" src="../../files/CMMB_wearable/audio/Experiment1/target.png">
    <ts-track title="Target (clean)" style="list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/target.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/target.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Passthrough" style="list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySIR/17/1_passthrough.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySIR/17/1_passthrough.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Cap: Oracle" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap/varySIR/17/5_Oracle.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap/varySIR/17/5_Oracle.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Cap: Adaptive MPDR" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap/varySIR/17/4_MPDR.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap/varySIR/17/4_MPDR.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Cap: Compact Model MPDR" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap/varySIR/17/2_Proposed.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap/varySIR/17/2_Proposed.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Chest: Oracle" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest/varySIR/17/5_Oracle.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest/varySIR/17/5_Oracle.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Chest: Adaptive MPDR" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest/varySIR/17/4_MPDR.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest/varySIR/17/4_MPDR.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Chest: Compact Model MPDR" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest/varySIR/17/2_Proposed.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest/varySIR/17/2_Proposed.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="BTE: Oracle" style="background-color: #0072BD;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySIR/17/5_Oracle.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySIR/17/5_Oracle.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="BTE: Adaptive MPDR" style="background-color: #0072BD;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySIR/17/4_MPDR.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySIR/17/4_MPDR.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="BTE: Compact Model MPDR" style="background-color: #0072BD;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySIR/17/2_Proposed.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySIR/17/2_Proposed.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Glasses: Oracle" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses/varySIR/17/5_Oracle.png">
          <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses/varySIR/17/5_Oracle.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Glasses: Adaptive MPDR" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses/varySIR/17/4_MPDR.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses/varySIR/17/4_MPDR.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Glasses: Compact Model MPDR" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses/varySIR/17/2_Proposed.png">
          <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses/varySIR/17/2_Proposed.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Cap + BTE: Oracle" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap+/varySIR/17/5_Oracle.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap+/varySIR/17/5_Oracle.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Cap + BTE: Adaptive MPDR" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap+/varySIR/17/4_MPDR.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap+/varySIR/17/4_MPDR.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Cap + BTE: Compact Model MPDR" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap+/varySIR/17/2_Proposed.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap+/varySIR/17/2_Proposed.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Chest + BTE: Oracle" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest+/varySIR/17/5_Oracle.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest+/varySIR/17/5_Oracle.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Chest + BTE: Adaptive MPDR" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest+/varySIR/17/4_MPDR.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest+/varySIR/17/4_MPDR.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Chest + BTE: Compact Model MPDR" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest+/varySIR/17/2_Proposed.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest+/varySIR/17/2_Proposed.wav" type="audio/wav"></ts-source>
    </ts-track>
        <ts-track title="Glasses + BTE: Oracle" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses/varySIR/17/5_Oracle.png">
          <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySIR/17/5_Oracle.wav" type="audio/wav"></ts-source>
        </ts-track>
        <ts-track title="Glasses + BTE: Adaptive MPDR" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySIR/17/4_MPDR.png">
          <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySIR/17/4_MPDR.wav" type="audio/wav"></ts-source>
        </ts-track>
        <ts-track title="Glasses + BTE: Compact Model MPDR" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySIR/17/2_Proposed.png">
          <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySIR/17/2_Proposed.wav" type="audio/wav"></ts-source>
    </ts-track>
  </div>
</div>
<div id="5dBSIR" class="tabcontent" style="display:none">
  <div class="player">
    <p>
      Speech corrupted by interferences at 5 dB SIR, with 20 dB SNR sensor noise, 20 dB SNR babble noise.
    </p>
    <img class="seekable" data-style="display:-webkit-box !important;" src="../../files/CMMB_wearable/audio/Experiment1/target.png">
    <ts-track title="Target (clean)" style="list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/target.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/target.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Passthrough" style="list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySIR/12/1_passthrough.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySIR/12/1_passthrough.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Cap: Oracle" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap/varySIR/12/5_Oracle.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap/varySIR/12/5_Oracle.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Cap: Adaptive MPDR" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap/varySIR/12/4_MPDR.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap/varySIR/12/4_MPDR.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Cap: Compact Model MPDR" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap/varySIR/12/2_Proposed.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap/varySIR/12/2_Proposed.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Chest: Oracle" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest/varySIR/12/5_Oracle.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest/varySIR/12/5_Oracle.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Chest: Adaptive MPDR" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest/varySIR/12/4_MPDR.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest/varySIR/12/4_MPDR.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="Chest: Compact Model MPDR" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest/varySIR/12/2_Proposed.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest/varySIR/12/2_Proposed.wav" type="audio/wav"></ts-source>
    </ts-track>
      <ts-track title="BTE: Oracle" style="background-color: #0072BD;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySIR/12/5_Oracle.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySIR/12/5_Oracle.wav" type="audio/wav"></ts-source>
      </ts-track>
      <ts-track title="BTE: Adaptive MPDR" style="background-color: #0072BD;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySIR/12/4_MPDR.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySIR/12/4_MPDR.wav" type="audio/wav"></ts-source>
      </ts-track>
      <ts-track title="BTE: Compact Model MPDR" style="background-color: #0072BD;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySIR/12/2_Proposed.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySIR/12/2_Proposed.wav" type="audio/wav"></ts-source>
      </ts-track>
        <ts-track title="Glasses: Oracle" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses/varySIR/12/5_Oracle.png">
          <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses/varySIR/12/5_Oracle.wav" type="audio/wav"></ts-source>
        </ts-track>
        <ts-track title="Glasses: Adaptive MPDR" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses/varySIR/12/4_MPDR.png">
          <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses/varySIR/12/4_MPDR.wav" type="audio/wav"></ts-source>
        </ts-track>
        <ts-track title="Glasses: Compact Model MPDR" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses/varySIR/12/2_Proposed.png">
          <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses/varySIR/12/2_Proposed.wav" type="audio/wav"></ts-source>
        </ts-track>
          <ts-track title="Cap + BTE: Oracle" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap+/varySIR/12/5_Oracle.png">
            <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap+/varySIR/12/5_Oracle.wav" type="audio/wav"></ts-source>
          </ts-track>
          <ts-track title="Cap + BTE: Adaptive MPDR" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap+/varySIR/12/4_MPDR.png">
            <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap+/varySIR/12/4_MPDR.wav" type="audio/wav"></ts-source>
          </ts-track>
          <ts-track title="Cap + BTE: Compact Model MPDR" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap+/varySIR/12/2_Proposed.png">
            <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap+/varySIR/12/2_Proposed.wav" type="audio/wav"></ts-source>
          </ts-track>
          <ts-track title="Chest + BTE: Oracle" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest+/varySIR/12/5_Oracle.png">
            <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest+/varySIR/12/5_Oracle.wav" type="audio/wav"></ts-source>
          </ts-track>
          <ts-track title="Chest + BTE: Adaptive MPDR" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest+/varySIR/12/4_MPDR.png">
            <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest+/varySIR/12/4_MPDR.wav" type="audio/wav"></ts-source>
          </ts-track>
          <ts-track title="Chest + BTE: Compact Model MPDR" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest+/varySIR/12/2_Proposed.png">
            <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest+/varySIR/12/2_Proposed.wav" type="audio/wav"></ts-source>
          </ts-track>
              <ts-track title="Glasses + BTE: Oracle" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses/varySIR/12/5_Oracle.png">
                <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySIR/12/5_Oracle.wav" type="audio/wav"></ts-source>
              </ts-track>
              <ts-track title="Glasses + BTE: Adaptive MPDR" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySIR/12/4_MPDR.png">
                <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySIR/12/4_MPDR.wav" type="audio/wav"></ts-source>
              </ts-track>
              <ts-track title="Glasses + BTE: Compact Model MPDR" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySIR/12/2_Proposed.png">
                <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySIR/12/2_Proposed.wav" type="audio/wav"></ts-source>
          </ts-track>
  </div>
</div>

### Varying babble noise level
<div class="tab" style="min-width: 600px">
  <button class="tablinks2 active" onclick="openTab2(event, '-5dBSNR')">-5 dB SNR</button>
  <button class="tablinks2" onclick="openTab2(event, '0dBSNR')">0 dB SNR</button>
  <button class="tablinks2" onclick="openTab2(event, '5dBSNR')">5 dB SNR</button>
</div>
<div id="-5dBSNR" class="tabcontent2" style="display:block">
<div class="player">
  <p>
    Speech corrupted by babble noise at -5 dB SNR, with 20 dB SNR sensor noise, 20 dB SIR interferences.
  </p>
  <img class="seekable" data-style="display:-webkit-box !important;" src="../../files/CMMB_wearable/audio/Experiment1/target.png">
  <ts-track title="Target (clean)" style="list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/target.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/target.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Passthrough" style="list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySNR/16/1_passthrough.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySNR/16/1_passthrough.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Cap: Oracle" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap/varySNR/16/5_Oracle.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap/varySNR/16/5_Oracle.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Cap: Adaptive MPDR" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap/varySNR/16/4_MPDR.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap/varySNR/16/4_MPDR.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Cap: Compact Model MPDR" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap/varySNR/16/2_Proposed.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap/varySNR/16/2_Proposed.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Chest: Oracle" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest/varySNR/16/5_Oracle.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest/varySNR/16/5_Oracle.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Chest: Adaptive MPDR" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest/varySNR/16/4_MPDR.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest/varySNR/16/4_MPDR.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Chest: Compact Model MPDR" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest/varySNR/16/2_Proposed.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest/varySNR/16/2_Proposed.wav" type="audio/wav"></ts-source>
  </ts-track>
    <ts-track title="BTE: Oracle" style="background-color: #0072BD;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySNR/16/5_Oracle.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySNR/16/5_Oracle.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="BTE: Adaptive MPDR" style="background-color: #0072BD;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySNR/16/4_MPDR.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySNR/16/4_MPDR.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="BTE: Compact Model MPDR" style="background-color: #0072BD;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySNR/16/2_Proposed.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySNR/16/2_Proposed.wav" type="audio/wav"></ts-source>
    </ts-track>
      <ts-track title="Glasses: Oracle" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses/varySNR/16/5_Oracle.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses/varySNR/16/5_Oracle.wav" type="audio/wav"></ts-source>
      </ts-track>
      <ts-track title="Glasses: Adaptive MPDR" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses/varySNR/16/4_MPDR.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses/varySNR/16/4_MPDR.wav" type="audio/wav"></ts-source>
      </ts-track>
      <ts-track title="Glasses: Compact Model MPDR" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses/varySNR/16/2_Proposed.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses/varySNR/16/2_Proposed.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Cap + BTE: Oracle" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap+/varySNR/6/5_Oracle.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap+/varySNR/6/5_Oracle.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Cap + BTE: Adaptive MPDR" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap+/varySNR/6/4_MPDR.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap+/varySNR/6/4_MPDR.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Cap + BTE: Compact Model MPDR" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap+/varySNR/6/2_Proposed.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap+/varySNR/6/2_Proposed.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Chest + BTE: Oracle" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest+/varySNR/6/5_Oracle.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest+/varySNR/6/5_Oracle.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Chest + BTE: Adaptive MPDR" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest+/varySNR/6/4_MPDR.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest+/varySNR/6/4_MPDR.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Chest + BTE: Compact Model MPDR" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest+/varySNR/6/2_Proposed.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest+/varySNR/6/2_Proposed.wav" type="audio/wav"></ts-source>
  </ts-track>
      <ts-track title="Glasses + BTE: Oracle" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses/varySNR/6/5_Oracle.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySNR/6/5_Oracle.wav" type="audio/wav"></ts-source>
      </ts-track>
      <ts-track title="Glasses + BTE: Adaptive MPDR" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySNR/6/4_MPDR.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySNR/6/4_MPDR.wav" type="audio/wav"></ts-source>
      </ts-track>
      <ts-track title="Glasses + BTE: Compact Model MPDR" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySNR/6/2_Proposed.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySNR/6/2_Proposed.wav" type="audio/wav"></ts-source>
  </ts-track>
</div>
</div>
<div id="0dBSNR" class="tabcontent2" style="display:none">
<div class="player">
  <p>
    Speech corrupted by babble noise at 0 dB SNR, with 20 dB SNR sensor noise, 20 dB SIR interferences.
  </p>
  <img class="seekable" data-style="display:-webkit-box !important;" src="../../files/CMMB_wearable/audio/Experiment1/target.png">
  <ts-track title="Target (clean)" style="list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/target.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/target.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Passthrough" style="list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySNR/11/1_passthrough.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySNR/11/1_passthrough.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Cap: Oracle" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap/varySNR/11/5_Oracle.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap/varySNR/11/5_Oracle.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Cap: Adaptive MPDR" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap/varySNR/11/4_MPDR.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap/varySNR/11/4_MPDR.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Cap: Compact Model MPDR" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap/varySNR/11/2_Proposed.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap/varySNR/11/2_Proposed.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Chest: Oracle" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest/varySNR/11/5_Oracle.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest/varySNR/11/5_Oracle.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Chest: Adaptive MPDR" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest/varySNR/11/4_MPDR.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest/varySNR/11/4_MPDR.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Chest: Compact Model MPDR" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest/varySNR/11/2_Proposed.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest/varySNR/11/2_Proposed.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="BTE: Oracle" style="background-color: #0072BD;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySNR/11/5_Oracle.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySNR/11/5_Oracle.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="BTE: Adaptive MPDR" style="background-color: #0072BD;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySNR/11/4_MPDR.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySNR/11/4_MPDR.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="BTE: Compact Model MPDR" style="background-color: #0072BD;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySNR/11/2_Proposed.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySNR/11/2_Proposed.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Glasses: Oracle" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses/varySNR/11/5_Oracle.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses/varySNR/11/5_Oracle.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Glasses: Adaptive MPDR" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses/varySNR/11/4_MPDR.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses/varySNR/11/4_MPDR.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Glasses: Compact Model MPDR" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses/varySNR/11/2_Proposed.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses/varySNR/11/2_Proposed.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Cap + BTE: Oracle" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap+/varySNR/6/5_Oracle.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap+/varySNR/6/5_Oracle.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Cap + BTE: Adaptive MPDR" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap+/varySNR/6/4_MPDR.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap+/varySNR/6/4_MPDR.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Cap + BTE: Compact Model MPDR" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap+/varySNR/6/2_Proposed.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap+/varySNR/6/2_Proposed.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Chest + BTE: Oracle" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest+/varySNR/6/5_Oracle.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest+/varySNR/6/5_Oracle.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Chest + BTE: Adaptive MPDR" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest+/varySNR/6/4_MPDR.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest+/varySNR/6/4_MPDR.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Chest + BTE: Compact Model MPDR" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest+/varySNR/6/2_Proposed.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest+/varySNR/6/2_Proposed.wav" type="audio/wav"></ts-source>
  </ts-track>
      <ts-track title="Glasses + BTE: Oracle" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses/varySNR/6/5_Oracle.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySNR/6/5_Oracle.wav" type="audio/wav"></ts-source>
      </ts-track>
      <ts-track title="Glasses + BTE: Adaptive MPDR" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySNR/6/4_MPDR.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySNR/6/4_MPDR.wav" type="audio/wav"></ts-source>
      </ts-track>
      <ts-track title="Glasses + BTE: Compact Model MPDR" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySNR/6/2_Proposed.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySNR/6/2_Proposed.wav" type="audio/wav"></ts-source>
  </ts-track>
</div>
</div>
<div id="5dBSNR" class="tabcontent2" style="display:none">
<div class="player">
  <p>
    Speech corrupted by babble noise at 5 dB SNR, with 20 dB SNR sensor noise, 20 dB SIR interferences.
  </p>
  <img class="seekable" data-style="display:-webkit-box !important;" src="../../files/CMMB_wearable/audio/Experiment1/target.png">
  <ts-track title="Target (clean)" style="list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/target.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/target.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Passthrough" style="list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySNR/6/1_passthrough.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySNR/6/1_passthrough.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Cap: Oracle" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap/varySNR/6/5_Oracle.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap/varySNR/6/5_Oracle.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Cap: Adaptive MPDR" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap/varySNR/6/4_MPDR.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap/varySNR/6/4_MPDR.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Cap: Compact Model MPDR" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap/varySNR/6/2_Proposed.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap/varySNR/6/2_Proposed.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Chest: Oracle" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest/varySNR/6/5_Oracle.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest/varySNR/6/5_Oracle.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Chest: Adaptive MPDR" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest/varySNR/6/4_MPDR.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest/varySNR/6/4_MPDR.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Chest: Compact Model MPDR" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest/varySNR/6/2_Proposed.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest/varySNR/6/2_Proposed.wav" type="audio/wav"></ts-source>
  </ts-track>
    <ts-track title="BTE: Oracle" style="background-color: #0072BD;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySNR/6/5_Oracle.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySNR/6/5_Oracle.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="BTE: Adaptive MPDR" style="background-color: #0072BD;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySNR/6/4_MPDR.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySNR/6/4_MPDR.wav" type="audio/wav"></ts-source>
    </ts-track>
    <ts-track title="BTE: Compact Model MPDR" style="background-color: #0072BD;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySNR/6/2_Proposed.png">
      <ts-source src="../../files/CMMB_wearable/audio/Experiment1/earpiece/varySNR/6/2_Proposed.wav" type="audio/wav"></ts-source>
    </ts-track>
      <ts-track title="Glasses: Oracle" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses/varySNR/6/5_Oracle.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses/varySNR/6/5_Oracle.wav" type="audio/wav"></ts-source>
      </ts-track>
      <ts-track title="Glasses: Adaptive MPDR" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses/varySNR/6/4_MPDR.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses/varySNR/6/4_MPDR.wav" type="audio/wav"></ts-source>
      </ts-track>
      <ts-track title="Glasses: Compact Model MPDR" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses/varySNR/6/2_Proposed.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses/varySNR/6/2_Proposed.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Cap + BTE: Oracle" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap+/varySNR/6/5_Oracle.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap+/varySNR/6/5_Oracle.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Cap + BTE: Adaptive MPDR" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap+/varySNR/6/4_MPDR.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap+/varySNR/6/4_MPDR.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Cap + BTE: Compact Model MPDR" style="background-color: #D95319;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/cap+/varySNR/6/2_Proposed.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/cap+/varySNR/6/2_Proposed.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Chest + BTE: Oracle" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest+/varySNR/6/5_Oracle.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest+/varySNR/6/5_Oracle.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Chest + BTE: Adaptive MPDR" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest+/varySNR/6/4_MPDR.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest+/varySNR/6/4_MPDR.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Chest + BTE: Compact Model MPDR" style="background-color: #77AC30;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/chest+/varySNR/6/2_Proposed.png">
    <ts-source src="../../files/CMMB_wearable/audio/Experiment1/chest+/varySNR/6/2_Proposed.wav" type="audio/wav"></ts-source>
  </ts-track>
      <ts-track title="Glasses + BTE: Oracle" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses/varySNR/6/5_Oracle.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySNR/6/5_Oracle.wav" type="audio/wav"></ts-source>
      </ts-track>
      <ts-track title="Glasses + BTE: Adaptive MPDR" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySNR/6/4_MPDR.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySNR/6/4_MPDR.wav" type="audio/wav"></ts-source>
      </ts-track>
      <ts-track title="Glasses + BTE: Compact Model MPDR" style="background-color: #EDB120;list-style-position: outside; overflow: hidden;" data-img="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySNR/6/2_Proposed.png">
        <ts-source src="../../files/CMMB_wearable/audio/Experiment1/glasses+/varySNR/6/2_Proposed.wav" type="audio/wav"></ts-source>
  </ts-track>
</div>
</div>


### References
[1] &emsp; J. S. Garofolo, L. F. Lamel, W. M. Fisher, J. G. Fiscus, D. S. Pallett, N. L.Dahlgren, and V. Zue, “TIMIT acoustic-phonetic continuous speech corpus,” <i>Linguistic Data Consortium (LDC)</i>, Philadelphia, USA, Corpus, 1993.

[2] &emsp; R. M. Corey, N. Tsuda, and A. C. Singer, “Acoustic impulse responses for wearable audio devices,” in <i>Proc. IEEE Int. Conf. on Acoust., Speech and Signal Process. (ICASSP)</i>, 2019, pp. 216–220.

[3] &emsp; A. Moore, P. Naylor, and M. Brookes, “Improving robustness of adaptive beamforming for hearing devices,” in <i>Proc. Int. Symp. on Auditory and Audiological Research. (ISAAR)</i>, vol. 7, Nyborg, Denmark, Jul. 2019, pp. 305–316.

[4] &emsp; N. Werner, S. Balke, F-R Stöter, M. Müller, B. Edler "trackswitch.js: A Versatile Web-Based Audio Player for Presenting Scientifc Results." <i> 3rd Web Audio Conference</i>, London, UK. 2017.




