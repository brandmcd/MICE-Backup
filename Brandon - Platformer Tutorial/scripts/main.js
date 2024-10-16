
// Import any other script files here, e.g.:
// import * as myModule from "./mymodule.js";

runOnStartup(async runtime =>
{
	// Code to run on the loading screen.
	// Note layouts, objects etc. are not yet available.
	
	runtime.addEventListener("beforeprojectstart", () => OnBeforeProjectStart(runtime));
});

async function OnBeforeProjectStart(runtime)
{
	// Code to run just before 'On start of layout' on
	// the first layout. Loading has finished and initial
	// instances are created and available to use here.
	
	runtime.addEventListener("tick", () => Tick(runtime));
}

function Tick(runtime)
{
	 // Get the instance of PlayerBox
    const playerBoxInstance = runtime.getInstancesByName("PlayerBox")[0]; // Get the first instance of PlayerBox

    // Get the instance of playerAnim
    const playerAnimInstance = runtime.getInstancesByName("PlayerAnim")[0]; // Get the first instance of playerAnim

        // Set playerAnim's position to PlayerBox's position
        playerAnimInstance.x = playerBoxInstance.x; // Set x position
        playerAnimInstance.y = playerBoxInstance.y; // Set y position
   
}
