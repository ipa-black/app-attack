package org.altbeacon.beacon.distance;

import android.os.Build;
import org.altbeacon.beacon.logging.LogManager;
/* loaded from: classes5.dex */
public class AndroidModel {
    private static final String TAG = "AndroidModel";
    String mBuildNumber;
    String mManufacturer;
    String mModel;
    String mVersion;

    public AndroidModel(String str, String str2, String str3, String str4) {
        this.mVersion = str;
        this.mBuildNumber = str2;
        this.mModel = str3;
        this.mManufacturer = str4;
    }

    public static AndroidModel forThisDevice() {
        return new AndroidModel(Build.VERSION.RELEASE, Build.ID, Build.MODEL, Build.MANUFACTURER);
    }

    public String getVersion() {
        return this.mVersion;
    }

    public void setVersion(String str) {
        this.mVersion = str;
    }

    public String getBuildNumber() {
        return this.mBuildNumber;
    }

    public String getModel() {
        return this.mModel;
    }

    public String getManufacturer() {
        return this.mManufacturer;
    }

    public void setBuildNumber(String str) {
        this.mBuildNumber = str;
    }

    public void setModel(String str) {
        this.mModel = str;
    }

    public void setManufacturer(String str) {
        this.mManufacturer = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    public int matchScore(AndroidModel androidModel) {
        boolean equalsIgnoreCase = this.mManufacturer.equalsIgnoreCase(androidModel.mManufacturer);
        if (equalsIgnoreCase && this.mModel.equals(androidModel.mModel)) {
            equalsIgnoreCase = true;
        }
        ?? r0 = equalsIgnoreCase;
        if (equalsIgnoreCase) {
            r0 = equalsIgnoreCase;
            if (this.mBuildNumber.equals(androidModel.mBuildNumber)) {
                r0 = 3;
            }
        }
        if (r0 == 3 && this.mVersion.equals(androidModel.mVersion)) {
            r0 = 4;
        }
        LogManager.d(TAG, "Score is %s for %s compared to %s", Integer.valueOf((int) r0), toString(), androidModel);
        return r0;
    }

    public String toString() {
        return "" + this.mManufacturer + ";" + this.mModel + ";" + this.mBuildNumber + ";" + this.mVersion;
    }
}
