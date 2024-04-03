---
title: "Group in Noise (GiN) dataset"
collection: demos
permalink: demos/GiN_examples/
redirect_from: 
  - /GiN_examples/
  - /GiN_examples
subtitle: "Illustrative examples"
---
This page provides some illustrative examples of the recordings in the [GiN database](/publication/2023_12_19_GIN). Full information about the database can be found in [the paper](https://doi.org/10.1109/OJSP.2023.3344379) and the full data can be access through [this link](https://data.hpc.imperial.ac.uk/resolve/?doi=13463).

The examples here are best presented through headphones.

## Task comparison

This example shows the difference in sound scene between the different tasks performed in each session, as measured at the reference microphone.

* __Task 1: reading task__. Speakers must read a passage from *Alice in Wonderland* one at a time, such that there should not be any overlapping speech. <audio id="soundtask1" src="../../files/GiN_examples/audio/all_tasks/task1.wav" preload="none" autoplay=false type="audio/wav"></audio><button onclick="document.getElementById('soundtask1').play();">Listen</button>
* __Task 2: group task__. The group must decide on a holiday destination that suits everyone's secret constraint. There should be mild levels of overlapping speech. <audio id="soundtask2" src="../../files/GiN_examples/audio/all_tasks/task2.wav" preload="none" autoplay=false type="audio/wav"></audio><button onclick="document.getElementById('soundtask2').play();">Listen</button>
* __Task 3: pair task__. Participants must play a game of *I spy* while using synonyms to yes and no. There should be almost continuous levels of overlapping speech. <audio id="soundtask3" src="../../files/GiN_examples/audio/all_tasks/task3.wav" preload="none" autoplay=false type="audio/wav"></audio><button onclick="document.getElementById('soundtask3').play();">Listen</button>
* __Task 4: group task__. The group must play a game of *Go fish* with clear turn taking. There should be limited levels of overlapping speech. <audio id="soundtask4" src="../../files/GiN_examples/audio/all_tasks/task4.wav" preload="none" autoplay=false type="audio/wav"></audio><button onclick="document.getElementById('soundtask4').play();">Listen</button>


These excerpts are taken from the `room_faraday/session_1/reference_audio/*` and files. 
 
## Channel comparison
This example shows the difference in sound scene capture between the different close-talking microphones, the binaural microphones worn by 'Participant 3', and the reference microphone. The baseline enhancement is also provided.


Click on the buttons to hear the microphone recordings.

<table style="border-collapse: collapse; border: none; text-align: center;">
  <tr style="border: none;">
    <th style="border: none; text-align: center;"><audio id="sound2" src="../../files/GiN_examples/audio/task1_faraday/P-02.wav" preload="none" autoplay=false type="audio/wav"></audio><button onclick="document.getElementById('sound2').play();"><img src="../../files/GiN_examples/figs/participant2.png" /></button></th>
    <th style="border: none; text-align: center;"><audio id="sound4" src="../../files/GiN_examples/audio/task1_faraday/P-04.wav" preload="none" autoplay=false type="audio/wav"></audio><button onclick="document.getElementById('sound4').play();"><img src="../../files/GiN_examples/figs/participant4.png" /></button></th>
    <th style="border: none; text-align: center;"><audio id="sound6" src="../../files/GiN_examples/audio/task1_faraday/P-06.wav" preload="none" autoplay=false type="audio/wav"></audio><button onclick="document.getElementById('sound6').play();"><img src="../../files/GiN_examples/figs/participant6.png" /></button></th>
    <th style="border: none; text-align: center;"></th>
  </tr>
  <tr style="border: none; text-align: center;">
    <th style="border: none; text-align: center;"></th>
    <th style="border: none; text-align: center;"><audio id="soundref" src="../../files/GiN_examples/audio/task1_faraday/REF.wav" preload="none" autoplay=false type="audio/wav"></audio><button onclick="document.getElementById('soundref').play();"><img src="../../files/GiN_examples/figs/mic.png" /></button></th>
    <th style="border: none; text-align: center;"></th>
    <th style="border: none; text-align: center;"><audio id="sound7" src="../../files/GiN_examples/audio/task1_faraday/P-07.wav" preload="none" autoplay=false type="audio/wav"></audio><button onclick="document.getElementById('sound7').play();"><img src="../../files/GiN_examples/figs/participant7.png" /></button></th>
  </tr>
  <tr style="border: none;">
    <th style="border: none; text-align: center; vertical-align: top;"><audio id="sound1" src="../../files/GiN_examples/audio/task1_faraday/P-01.wav" preload="none" autoplay=false type="audio/wav"></audio><button onclick="document.getElementById('sound1').play();"><img src="../../files/GiN_examples/figs/participant1.png" /></button></th>
    <th style="border: none; text-align: center; vertical-align: top;">
      <table style="border-collapse: collapse; border: none; text-align: center; cellpadding: 0;">
        <tr style="border-collapse: collapse;r border: none;">
          <th style="border-collapse: collapse; border: none; text-align: center; vertical-align: top;"><audio id="sound3" src="../../files/GiN_examples/audio/task1_faraday/P-03-BIN.wav" preload="none" autoplay=false type="audio/wav"></audio><button onclick="document.getElementById('sound3').play();"><img src="../../files/GiN_examples/figs/participant3.png" /></button>
          </th>
        </tr>
        <tr style="border: none;">
          <th style="border: none; text-align: center; vertical-align: top;"><audio id="soundbase" src="../../files/GiN_examples/audio/task1_faraday/BASELINE.wav" preload="none" autoplay=false type="audio/wav"></audio><button onclick="document.getElementById('soundbase').play();">BASELINE</button>
          </th>
        </tr>
      </table>
    </th>
    <th style="border: none; text-align: center; vertical-align: top;"><audio id="sound5" src="../../files/GiN_examples/audio/task1_faraday/P-05.wav" preload="none" autoplay=false type="audio/wav"></audio><button onclick="document.getElementById('sound5').play();"><img src="../../files/GiN_examples/figs/participant5.png" /></button>
    </th>
    <th style="border: none; text-align: center;"></th>
  </tr>
</table>
These excerpts are taken from the `room_faraday/session_1/*/02_00_000` files. 


## Room comparison
This example shows the difference in sound scene between rooms in the database, as measured at the reference microphone.

Click on each picture to hear the recordings.
<table style="border-collapse: collapse; border: none; text-align: center;">
  <tr style="border: none;">
    <th width="30%" style="border: none; text-align: center;"><audio id="sound403" src="../../files/GiN_examples/audio/task0_all_rooms/403.wav" preload="none" autoplay=false type="audio/wav"></audio><button onclick="document.getElementById('sound403').play();"><img src="../../files/GiN_examples/figs/room_403b.jpg" /></button></th>
    <th width="30%" style="border: none; text-align: center;"><audio id="sound807" src="../../files/GiN_examples/audio/task0_all_rooms/807.wav" preload="none" autoplay=false type="audio/wav"></audio><button onclick="document.getElementById('sound807').play();"><img src="../../files/GiN_examples/figs/807.jpg" /></button></th>
    <th width="30%" style="border: none; text-align: center;"><audio id="soundfaraday" src="../../files/GiN_examples/audio/task0_all_rooms/faraday.wav" preload="none" autoplay=false type="audio/wav"></audio><button onclick="document.getElementById('soundfaraday').play();"><img src="../../files/GiN_examples/figs/faraday.jpg" /></button></th>
  </tr>
  <tr style="border: none;">
    <th style="border: none; text-align: center;"> Room 403 </th>
    <th style="border: none; text-align: center;"> Room 807 </th>
    <th style="border: none; text-align: center;"> Room Faraday</th>
  </tr>
</table>

These excerpts are taken from the `room_403/session_2/reference_audio/00_00_000` and `room_*/session_1/reference_audio/00_00_000` files. 
