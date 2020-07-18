/*
* Name: sh_slow_config.lua
* By: Bread
* For: b2r.online
* Usage: Config the addon
*/

  slow_config = slow_config or {}
  /*
   * slow_config.deduct_run - number how much run speed should be taken from the player
   * slow_config.deduct_walk - number how much walk speed should be taken from the player
   * Note: both of these are divded from the player's original speed
   */
  slow_config.deduct_run  = 2
  slow_config.deduct_walk = 2
  /*
   * slow_config.run_calc - how the player's run speed is calculated
   * slow_config.walk_calc  - how the player's walk speed is calculated 
   */
  //slow_config.run_calc  = LocalPlayer():GetRunSpeed()
  //slow_config.walk_calc = LocalPlayer():GetWalkSpeed()
  /*
   * slow_config.slowtime - number how long the slow should last in seconds 
   */
  slow_config.slowtime = 5
  /*
   * slow_config.chatprint - bool should a message be printed in chat indicating the the player has been stunned
   */
  slow_config.chatprint = false




