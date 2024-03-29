--[[----------------------------------------------------------------------------
-- Duplex.uc33e
----------------------------------------------------------------------------]]--

-- default configuration of the uc33e
-- uses a control map and the Mixer and Effect applications
-- applications

--==============================================================================

-- setup a Mixer and Effect application

duplex_configurations:insert {

  -- configuration properties
  name = "Mixer",
  pinned = true,

  -- device properties
  device = {
    display_name = "uc33e",
    device_port_in = "uc33e",
    device_port_out = "",
    control_map = "Controllers/uc33e/uc33e.xml",
    thumbnail = "uc33e.bmp",
    protocol = DEVICE_MIDI_PROTOCOL
  },

  applications = {
    Mixer = {
      mappings = {
        panning = {
          group_name = "Encoders-3"
        },
        levels = {
          group_name = "Sliders"
        }
      },
      options = {
        pre_post = 2
      }
    },
   Effect = {
      mappings = {
        parameters = {
          group_name= "Encoders-2",
        }
--        page = {
--          group_name = "XFader",
--        },
--        device = {
--          group_name = "Pots",
--        },
      },
      options = {
        
      }
    }
  }
}
