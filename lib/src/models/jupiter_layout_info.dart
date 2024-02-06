class JupiterLayoutInfo {
  double firstPanelSize = 50;
  double secondPanelSize = 50;

  JupiterLayoutInfo(double prFirstPanelSize, double prSecondPanelSize) {
    this.firstPanelSize = prFirstPanelSize;
    this.secondPanelSize = prSecondPanelSize;
  }

  JupiterLayoutInfo.symetric() {
    this.firstPanelSize = 50;
    this.secondPanelSize = 50;
  }

  double firstPanelSizeFrom(double prAvaliableSize) =>
      prAvaliableSize * (this.firstPanelSize / 100);

  double secondPanelSizeFrom(double prAvaliableSize) =>
      prAvaliableSize * (this.secondPanelSize / 100);
}
