package org.altbeacon.beacon;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import org.altbeacon.beacon.Beacon;
/* loaded from: classes5.dex */
public class AltBeacon extends Beacon {
    public static final Parcelable.Creator<AltBeacon> CREATOR = new Parcelable.Creator<AltBeacon>() { // from class: org.altbeacon.beacon.AltBeacon.1
        @Override // android.os.Parcelable.Creator
        public AltBeacon createFromParcel(Parcel parcel) {
            return new AltBeacon(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public AltBeacon[] newArray(int i) {
            return new AltBeacon[i];
        }
    };
    private static final String TAG = "AltBeacon";

    @Override // org.altbeacon.beacon.Beacon, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected AltBeacon(Beacon beacon) {
        super(beacon);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AltBeacon() {
    }

    protected AltBeacon(Parcel parcel) {
        super(parcel);
    }

    public int getMfgReserved() {
        return this.mDataFields.get(0).intValue();
    }

    @Override // org.altbeacon.beacon.Beacon, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }

    /* loaded from: classes5.dex */
    public static class Builder extends Beacon.Builder {
        @Override // org.altbeacon.beacon.Beacon.Builder
        public Beacon build() {
            return new AltBeacon(super.build());
        }

        public Builder setMfgReserved(int i) {
            if (this.mBeacon.mDataFields.size() != 0) {
                this.mBeacon.mDataFields = new ArrayList();
            }
            this.mBeacon.mDataFields.add(Long.valueOf(i));
            return this;
        }
    }
}
