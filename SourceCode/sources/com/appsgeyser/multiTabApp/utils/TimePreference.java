package com.appsgeyser.multiTabApp.utils;

import android.content.Context;
import android.content.res.TypedArray;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TimePicker;
import com.appodeal.ads.modules.common.internal.LogConstants;
import java.util.Locale;
/* loaded from: classes2.dex */
public class TimePreference extends DialogPreference {
    private int lastHour;
    private int lastMinute;
    private TimePicker picker;

    public static int getHour(String str) {
        return Integer.parseInt(str.split(":")[0]);
    }

    public static int getMinute(String str) {
        return Integer.parseInt(str.split(":")[1]);
    }

    public TimePreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.lastHour = 0;
        this.lastMinute = 0;
        this.picker = null;
        setPositiveButtonText(LogConstants.EVENT_SET);
        setNegativeButtonText("Cancel");
    }

    @Override // android.preference.DialogPreference
    protected View onCreateDialogView() {
        TimePicker timePicker = new TimePicker(getContext());
        this.picker = timePicker;
        return timePicker;
    }

    @Override // android.preference.DialogPreference
    protected void onBindDialogView(View view) {
        super.onBindDialogView(view);
        this.picker.setCurrentHour(Integer.valueOf(this.lastHour));
        this.picker.setCurrentMinute(Integer.valueOf(this.lastMinute));
    }

    @Override // android.preference.DialogPreference
    protected void onDialogClosed(boolean z) {
        super.onDialogClosed(z);
        if (z) {
            this.lastHour = this.picker.getCurrentHour().intValue();
            this.lastMinute = this.picker.getCurrentMinute().intValue();
            String str = String.format(Locale.US, "%02d", Integer.valueOf(this.lastHour)) + ":" + String.format(Locale.US, "%02d", Integer.valueOf(this.lastMinute));
            if (callChangeListener(str)) {
                persistString(str);
            }
        }
    }

    @Override // android.preference.Preference
    protected Object onGetDefaultValue(TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }

    @Override // android.preference.Preference
    protected void onSetInitialValue(boolean z, Object obj) {
        String obj2;
        if (!z) {
            obj2 = obj.toString();
        } else if (obj == null) {
            obj2 = getPersistedString("00:00");
        } else {
            obj2 = getPersistedString(obj.toString());
        }
        this.lastHour = getHour(obj2);
        this.lastMinute = getMinute(obj2);
    }
}
