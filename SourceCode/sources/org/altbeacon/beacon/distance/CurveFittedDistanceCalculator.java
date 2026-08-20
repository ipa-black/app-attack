package org.altbeacon.beacon.distance;

import org.altbeacon.beacon.logging.LogManager;
/* loaded from: classes5.dex */
public class CurveFittedDistanceCalculator implements DistanceCalculator {
    public static final String TAG = "CurveFittedDistanceCalculator";
    private double mCoefficient1;
    private double mCoefficient2;
    private double mCoefficient3;

    public CurveFittedDistanceCalculator(double d2, double d3, double d4) {
        this.mCoefficient1 = d2;
        this.mCoefficient2 = d3;
        this.mCoefficient3 = d4;
    }

    @Override // org.altbeacon.beacon.distance.DistanceCalculator
    public double calculateDistance(int i, double d2) {
        double pow;
        if (d2 == 0.0d) {
            return -1.0d;
        }
        LogManager.d(TAG, "calculating distance based on mRssi of %s and txPower of %s", Double.valueOf(d2), Integer.valueOf(i));
        double d3 = (d2 * 1.0d) / i;
        if (d3 < 1.0d) {
            pow = Math.pow(d3, 10.0d);
        } else {
            pow = (this.mCoefficient1 * Math.pow(d3, this.mCoefficient2)) + this.mCoefficient3;
        }
        LogManager.d(TAG, "avg mRssi: %s distance: %s", Double.valueOf(d2), Double.valueOf(pow));
        return pow;
    }
}
