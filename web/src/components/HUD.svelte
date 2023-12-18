<script>
    import { useNuiEvent } from '../utils/useNuiEvent';
    import { faHeartbeat, faGlassWhiskey, faPizzaSlice, faBrain, faShieldAlt, faLungs, faRunning, faTerminal } from '@fortawesome/free-solid-svg-icons';
    import { FontAwesomeIcon } from '@fortawesome/svelte-fontawesome';
    import '/src/global.css'

    let health = '100%';
    let armor = '100%';
    let thirst = '100%';
    let hunger = '100%';
    let stress = '0%';
    let oxygen = '100%';
    let stamina = '100%';
    let developerStatus = true;

    useNuiEvent('UPDATE_STATUS', (data) => {
        health = `${data.health}%`;
        armor = `${data.armor}%`;
        thirst = `${data.thirst}%`;
        hunger = `${data.hunger}%`;
        stress = `${data.stress}%`;
        oxygen = `${data.oxygen}%`;
        stamina = `${data.stamina}%`;
        developerStatus = data.developerStatus;
    });

    function getDeveloperStatus() {
        if (developerStatus) {
            return 'block';
        } else {
            return 'none';
        }
    }
</script>

<div id="hud">
    <div id="health" class="status">
        <div class="icon">
            <FontAwesomeIcon icon={faHeartbeat} />
          </div>
        <div class="filling" style="height: 50%"></div>
      </div>
    <div id="thirst" class="status">
        <div class="icon">
            <FontAwesomeIcon icon={faGlassWhiskey} /> 
        </div>
        <div class="filling" style="height: 75%"></div>
    </div>
    <div id="hunger" class="status">
        <div class="icon">
            <FontAwesomeIcon icon={faPizzaSlice} /> 
        </div>
        <div class="filling" style="height: 35%"></div>
    </div>
    <div id="stress" class="status">
        <div class="icon">
            <FontAwesomeIcon icon={faBrain} />
        </div>
        <div class="filling" style="height: 75%"></div>
    </div>
    <div id="armor" class="status">
        <div class="icon">
            <FontAwesomeIcon icon={faShieldAlt} />
        </div>
        <div class="filling" style="height: 90%"></div>
    </div>
    <div id="oxygen" class="status">
        <div class="icon">
            <FontAwesomeIcon icon={faLungs} />
        </div>
        <div class="filling" style="height: 75%"></div>
    </div>
    <div id="stamina" class="status">
        <div class="icon">
            <FontAwesomeIcon icon={faRunning} />
        </div>
        <div class="filling" style="height: 10%"></div>
    </div>
    <div id="developerStatus" class="status">
        <div class="icon">
            <FontAwesomeIcon icon={faTerminal} /> 
        </div>
    </div>
</div>