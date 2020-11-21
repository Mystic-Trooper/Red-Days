String analysisText(List<String> message, int days) {
  int i;
  if (days > 37) {
    i = 0;
  } else if (days < 19) {
    i = 1;
  } else if (24 < days || days < 34) {
    i = 2;
  } else if (days > 56) {
    i = 3;
  }
  return message[i];
}
