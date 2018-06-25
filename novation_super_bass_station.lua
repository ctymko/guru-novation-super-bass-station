-- OSCILLATOR 1 & 2 --
local group_oscillators = Group {
  name = "Oscillators 1 and 2",
  Parameter {
    id = "osc_2_detune",
    name = "Osc 2 Detune",
    type = "cc",
    number = 23,
    default_value = 64, 
    display_min_value = -50,
    display_max_value = 50
  },
  Parameter {
    id = "osc_2_semitone",
    name = "Osc 2 Semitone",
    type = "cc",
    number = 24,
    default_value = 65, 
    display_min_value = -12,
    display_max_value = 12
  },
  Parameter {
    id = "Osc_2_ENV2_depth",
    name = "Osc 2 ENV 2 Depth",
    type = "cc",
    number = 25,
    default_value = 65, 
    display_min_value = -5,
    display_max_value = 5
  },
  Parameter {
    id = "Osc_2_LFO1_Depth",
    name = "Osc 2 LFO 1 Depth",
    type = "cc",
    number = 26,
    default_value = 65, 
    display_min_value = -5,
    display_max_value = 5
  },
  Parameter {
    id = "Osc_2_pulse_width",
    name = "Osc 2 Pulse Width",
    type = "cc",
    number = 27,
    default_value = 65, 
    display_min_value = -5,
    display_max_value = 5
  },
}

-- MIXER --
local group_mixer = Group {
    name = "Mixer",
    Parameter {
      id = "volume",
      name = "Level",
      type = "cc",
      number = 7,
      default_value = 127,
      display_min_value = 0,
      display_max_value = 127
    },
    Parameter {
      id = "osc_level",
      name = "Osc Level",
      type = "cc",
      number = 28,
      default_value = 127,
      display_min_value = 0,
      display_max_value = 127
    },
    Parameter {
      id = "sub_osc_level",
      name = "Sub Osc Level",
      type = "cc",
      number = 29,
      default_value = 0,
      display_min_value = 0,
      display_max_value = 127
    },
    Parameter {
      id = "noise_level",
      name = "Noise Level",
      type = "cc",
      number = 30,
      default_value = 0,
      display_min_value = 0,
      display_max_value = 127
    },
    Parameter {
      id = "ring_mod_level",
      name = "Ring Mod Level",
      type = "cc",
      number = 31,
      default_value = 0,
      display_min_value = 0,
      display_max_value = 127
    },
    Parameter {
      id = "external_audio_level",
      name = "External Audio Level",
      type = "cc",
      number = 33,
      default_value = 0,
      display_min_value = 0,
      display_max_value = 127
    }
}


-- Synth definition -----------------------------------------------------------
return SynthDefinition {
  id = "novation_super_bass_station",
  name = "Novation Super Bass Station",
  author = "PBF [pbf@severeddigit.ca]",
  beta = true,
  omit_nrpn_lsb = true,
  content_height = 800,
  Section {
      name = "Main",
        sysex_message_template = { 0xf0, 0x00, 0x20, 0x29, 0x00, 0x33, 0x00, 0x40, 0xf7},
        group_oscillators,
        group_mixer,
      }
}
