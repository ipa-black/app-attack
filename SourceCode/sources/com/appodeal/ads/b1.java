package com.appodeal.ads;

import android.app.AlertDialog;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
/* loaded from: classes.dex */
public final class b1 implements AdapterView.OnItemLongClickListener {
    @Override // android.widget.AdapterView.OnItemLongClickListener
    public final boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        com.appodeal.ads.utils.h hVar = (com.appodeal.ads.utils.h) adapterView.getAdapter();
        hVar.getClass();
        ArrayAdapter arrayAdapter = new ArrayAdapter(hVar.getContext(), 17367057);
        arrayAdapter.add("Waterfall order");
        arrayAdapter.add("Alphabetical order");
        AlertDialog.Builder builder = new AlertDialog.Builder(hVar.getContext());
        builder.setAdapter(arrayAdapter, new com.appodeal.ads.utils.g(hVar)).setTitle("Sort items");
        builder.create().show();
        return true;
    }
}
