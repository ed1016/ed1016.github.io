---
title: "PEVD in wireless acoustic sensor networks"
collection: demos
permalink: demos/PEVD_in_networks/
redirect_from: 
  - /PEVD_in_networks/
  - /PEVD_in_networks
subtitle: "Latency-agnostic speech enhancement for wireless acoustic sensor networks using polynomial eigenvalue decomposition"
script: '<script type="text/javascript" src="../../assets/js/custom.js"></script><script type="text/javascript">jQuery(document).ready(function() {jQuery(".player").trackSwitch({spacebar: true});});var settings = {onlyradiosolo: true,repeat: true,};$(".player").trackSwitch(settings);</script>'
headscript: '<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" /><link rel="stylesheet" href="../../assets/css/trackswitch.min.css" />'
---
This page provides listening examples for enhancement in wireless acoustic sensor networks (WASNs) using a polynomial eigenvalue decomposiion (PEVD)-based method. The examples are 1 realisation of the setup below, where 5 microphones and 1 speech source are placed randomly in a `4x5x3` m room with `T60=0.4` s. 

<img style="width: 50%; display:block; margin-left: auto; margin-right: auto;in" src="../../files/PEVD_in_networks/figs/room.jpg"/>

This page was generated using <b> trackswitch.js </b> in [1].

## Performance in synchronised networks

<div class="tab" style="min-width: 600px">
  <button class="tablinks active" onclick="openTab(event, 'Babblereverb')" style="max-width: 180px">Babble</button>
  <button class="tablinks" onclick="openTab(event, 'Whitereverb')" style="max-width: 180px">White</button>
  <button class="tablinks" onclick="openTab(event, 'Speech-shaped noisereverb')" style="max-width: 180px">Speech-shaped</button>
  <button class="tablinks" onclick="openTab(event, 'factoryreverb')" style="max-width: 180px">Factory</button>
</div>

<div id="Babblereverb" class="tabcontent" style="display:block;">
  <img src="../../files/PEVD_in_networks/figs/synced_babble.jpg" />
  <div class="player">
  <p>
      Diffuse babble noise at -5 dB SNR.
  </p>
  <!-- <img src="raw.png" class="seekable"> -->
  <ts-track title="Mic (max)">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_ownbabble_iso0_reverb1_snr-5_mixbest.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Mic (min)">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_ownbabble_iso0_reverb1_snr-5_mixworst.wav" type="audio/wav"></ts-source>
  </ts-track>
    <ts-track title="pevd (long)">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_ownbabble_iso0_reverb1_snr-5_pevdlong.wav" type="audio/wav"></ts-source>
  </ts-track>
    <ts-track title="pevd (short)">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_ownbabble_iso0_reverb1_snr-5_pevdshort.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="ogevd">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_ownbabble_iso0_reverb1_snr-5_ogevd.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="omwf" style="overflow: hidden">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_ownbabble_iso0_reverb1_snr-5_omwf.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="vadmwf">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_ownbabble_iso0_reverb1_snr-5_vadmwf.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Target">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_ownbabble_iso0_reverb1_snr-5_target.wav" type="audio/wav"></ts-source>
  </ts-track>
</div>
</div>
<div id="Whitereverb" class="tabcontent" style="display:none;">
  <img src="../../files/PEVD_in_networks/figs/synced_white.jpg" />
  <div class="player">
  <p>
      Diffuse white noise at -5 dB SNR.
  </p>
  <!-- <img src="raw.png" class="seekable"> -->
  <ts-track title="Mic (max)">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_white_iso0_reverb1_snr-5_mixbest.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Mic (min)">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_white_iso0_reverb1_snr-5_mixworst.wav" type="audio/wav"></ts-source>
  </ts-track>
    <ts-track title="pevd (long)">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_white_iso0_reverb1_snr-5_pevdlong.wav" type="audio/wav"></ts-source>
  </ts-track>
    <ts-track title="pevd (short)">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_white_iso0_reverb1_snr-5_pevdshort.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="ogevd">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_white_iso0_reverb1_snr-5_ogevd.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="omwf" style="overflow: hidden">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_white_iso0_reverb1_snr-5_omwf.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="vadmwf">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_white_iso0_reverb1_snr-5_vadmwf.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Target">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_white_iso0_reverb1_snr-5_target.wav" type="audio/wav"></ts-source>
  </ts-track>
</div>
</div>
<div id="Speech-shaped noisereverb" class="tabcontent" style="display:none;">
  <img src="../../files/PEVD_in_networks/figs/synced_speechshaped.jpg" />
  <div class="player">
  <p>
      Diffuse speech-shaped noise at -5 dB SNR.
  </p>
  <!-- <img src="raw.png" class="seekable"> -->
  <ts-track title="Mic (max)">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_speechshaped_iso0_reverb1_snr-5_mixbest.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Mic (min)">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_speechshaped_iso0_reverb1_snr-5_mixworst.wav" type="audio/wav"></ts-source>
  </ts-track>
    <ts-track title="pevd (long)">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_speechshaped_iso0_reverb1_snr-5_pevdlong.wav" type="audio/wav"></ts-source>
  </ts-track>
    <ts-track title="pevd (short)">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_speechshaped_iso0_reverb1_snr-5_pevdshort.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="ogevd">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_speechshaped_iso0_reverb1_snr-5_ogevd.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="omwf" style="overflow: hidden">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_speechshaped_iso0_reverb1_snr-5_omwf.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="vadmwf">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_speechshaped_iso0_reverb1_snr-5_vadmwf.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Target">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_speechshaped_iso0_reverb1_snr-5_target.wav" type="audio/wav"></ts-source>
  </ts-track>
</div>
</div>
<div id="factoryreverb" class="tabcontent" style="display:none;">
  <img src="../../files/PEVD_in_networks/figs/synced_factory.jpg" />
  <div class="player">
  <p>
      Diffuse factory noise at -5 dB SNR.
  </p>
  <!-- <img src="raw.png" class="seekable"> -->
  <ts-track title="Mic (max)">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_factory_iso0_reverb1_snr-5_mixbest.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Mic (min)">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_factory_iso0_reverb1_snr-5_mixworst.wav" type="audio/wav"></ts-source>
  </ts-track>
    <ts-track title="pevd (long)">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_factory_iso0_reverb1_snr-5_pevdlong.wav" type="audio/wav"></ts-source>
  </ts-track>
    <ts-track title="pevd (short)">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_factory_iso0_reverb1_snr-5_pevdshort.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="ogevd">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_factory_iso0_reverb1_snr-5_ogevd.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="omwf" style="overflow: hidden">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_factory_iso0_reverb1_snr-5_omwf.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="vadmwf">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_factory_iso0_reverb1_snr-5_vadmwf.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Target">
      <ts-source src="../../files/PEVD_in_networks/audio/sync/ieee01m01_factory_iso0_reverb1_snr-5_target.wav" type="audio/wav"></ts-source>
  </ts-track>
</div>
</div>


## Performance in asynchronous networks with latency
In this setup latency is applied to the microphones in the network in the range `{0...50}` ms such that one node always suffers the maximum possible latency (i.e. 50 ms) and the other nodes experience a random latency.

<div class="tab" style="min-width: 600px">
  <button class="tablinks2 active" onclick="openTab2(event, 'Babblereverb async')" style="max-width: 180px">Babble</button>
  <button class="tablinks2" onclick="openTab2(event, 'Whitereverb async')" style="max-width: 180px">White</button>
  <button class="tablinks2" onclick="openTab2(event, 'Speech-shaped noisereverb async')" style="max-width: 180px">Speech-shaped</button>
  <button class="tablinks2" onclick="openTab2(event, 'factoryreverb async')" style="max-width: 180px">Factory</button>
</div>

<div id="Babblereverb async" class="tabcontent2" style="display:block;">
  <img src="../../files/PEVD_in_networks/figs/async_babble.jpg" />
  <div class="player">
  <p>
      Diffuse babble noise at -5 dB SNR.
  </p>
  <!-- <img src="raw.png" class="seekable"> -->
  <ts-track title="Mic (max)">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_ownbabble_iso0_reverb1_snr-5_mixbest.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Mic (min)">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_ownbabble_iso0_reverb1_snr-5_mixworst.wav" type="audio/wav"></ts-source>
  </ts-track>
    <ts-track title="pevd (long)">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_ownbabble_iso0_reverb1_snr-5_pevdlong.wav" type="audio/wav"></ts-source>
  </ts-track>
    <ts-track title="pevd (short)">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_ownbabble_iso0_reverb1_snr-5_pevdshort.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="ogevd">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_ownbabble_iso0_reverb1_snr-5_ogevd.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="omwf" style="overflow: hidden">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_ownbabble_iso0_reverb1_snr-5_omwf.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="vadmwf">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_ownbabble_iso0_reverb1_snr-5_vadmwf.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Target">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_ownbabble_iso0_reverb1_snr-5_target.wav" type="audio/wav"></ts-source>
  </ts-track>
</div>
</div>
<div id="Whitereverb async" class="tabcontent2" style="display:none;">
  <img src="../../files/PEVD_in_networks/figs/async_white.jpg" />
  <div class="player">
  <p>
      Diffuse white noise at -5 dB SNR.
  </p>
  <!-- <img src="raw.png" class="seekable"> -->
  <ts-track title="Mic (max)">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_white_iso0_reverb1_snr-5_mixbest.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Mic (min)">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_white_iso0_reverb1_snr-5_mixworst.wav" type="audio/wav"></ts-source>
  </ts-track>
    <ts-track title="pevd (long)">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_white_iso0_reverb1_snr-5_pevdlong.wav" type="audio/wav"></ts-source>
  </ts-track>
    <ts-track title="pevd (short)">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_white_iso0_reverb1_snr-5_pevdshort.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="ogevd">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_white_iso0_reverb1_snr-5_ogevd.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="omwf" style="overflow: hidden">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_white_iso0_reverb1_snr-5_omwf.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="vadmwf">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_white_iso0_reverb1_snr-5_vadmwf.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Target">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_white_iso0_reverb1_snr-5_target.wav" type="audio/wav"></ts-source>
  </ts-track>
</div>
</div>
<div id="Speech-shaped noisereverb async" class="tabcontent2" style="display:none;">
  <img src="../../files/PEVD_in_networks/figs/async_speechshaped.jpg" />
  <div class="player">
  <p>
      Diffuse speech-shaped noise at -5 dB SNR.
  </p>
  <!-- <img src="raw.png" class="seekable"> -->
  <ts-track title="Mic (max)">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_speechshaped_iso0_reverb1_snr-5_mixbest.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Mic (min)">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_speechshaped_iso0_reverb1_snr-5_mixworst.wav" type="audio/wav"></ts-source>
  </ts-track>
    <ts-track title="pevd (long)">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_speechshaped_iso0_reverb1_snr-5_pevdlong.wav" type="audio/wav"></ts-source>
  </ts-track>
    <ts-track title="pevd (short)">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_speechshaped_iso0_reverb1_snr-5_pevdshort.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="ogevd">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_speechshaped_iso0_reverb1_snr-5_ogevd.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="omwf" style="overflow: hidden">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_speechshaped_iso0_reverb1_snr-5_omwf.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="vadmwf">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_speechshaped_iso0_reverb1_snr-5_vadmwf.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Target">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_speechshaped_iso0_reverb1_snr-5_target.wav" type="audio/wav"></ts-source>
  </ts-track>
</div>
</div>
<div id="factoryreverb async" class="tabcontent2" style="display:none;">
  <img src="../../files/PEVD_in_networks/figs/async_factory.jpg" />
  <div class="player">
  <p>
      Diffuse factory noise at -5 dB SNR.
  </p>
  <!-- <img src="raw.png" class="seekable"> -->
  <ts-track title="Mic (max)">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_factory_iso0_reverb1_snr-5_mixbest.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Mic (min)">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_factory_iso0_reverb1_snr-5_mixworst.wav" type="audio/wav"></ts-source>
  </ts-track>
    <ts-track title="pevd (long)">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_factory_iso0_reverb1_snr-5_pevdlong.wav" type="audio/wav"></ts-source>
  </ts-track>
    <ts-track title="pevd (short)">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_factory_iso0_reverb1_snr-5_pevdshort.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="ogevd">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_factory_iso0_reverb1_snr-5_ogevd.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="omwf" style="overflow: hidden">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_factory_iso0_reverb1_snr-5_omwf.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="vadmwf">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_factory_iso0_reverb1_snr-5_vadmwf.wav" type="audio/wav"></ts-source>
  </ts-track>
  <ts-track title="Target">
      <ts-source src="../../files/PEVD_in_networks/audio/async/ieee01m01_factory_iso0_reverb1_snr-5_target.wav" type="audio/wav"></ts-source>
  </ts-track>
</div>
</div>


## References
[1] &emsp; N. Werner, S. Balke, F-R Stöter, M. Müller, B. Edler "trackswitch.js: A Versatile Web-Based Audio Player for Presenting Scientifc Results." <i> 3rd Web Audio Conference</i>, London, UK. 2017.




