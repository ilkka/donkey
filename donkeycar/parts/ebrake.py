class EBrake:

  def __init__(self):
    print('Emergency brake started')

  def run(self, raw_throttle, time_to_impact):
    if (time_to_impact > 0 and time_to_impact < 1):
      print('\n\nEmergency brake used!!\n\n')
      return 0
    return raw_throttle

  def shutdown(self):
    print('Emergency brake stopped')
