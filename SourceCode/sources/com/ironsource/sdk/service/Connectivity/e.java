package com.ironsource.sdk.service.Connectivity;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.os.Build;
import android.util.Log;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class e implements c {

    /* renamed from: a  reason: collision with root package name */
    private String f12103a = "e";

    /* renamed from: b  reason: collision with root package name */
    private int f12104b = 23;

    /* renamed from: c  reason: collision with root package name */
    private final d f12105c;

    /* renamed from: d  reason: collision with root package name */
    private ConnectivityManager.NetworkCallback f12106d;

    public e(d dVar) {
        this.f12105c = dVar;
    }

    @Override // com.ironsource.sdk.service.Connectivity.c
    public final void a() {
        this.f12106d = null;
    }

    @Override // com.ironsource.sdk.service.Connectivity.c
    public final void a(final Context context) {
        if (Build.VERSION.SDK_INT >= this.f12104b) {
            b(context);
            if (com.ironsource.d.a.a(context).equals("none")) {
                this.f12105c.a();
            }
            if (this.f12106d == null) {
                this.f12106d = new ConnectivityManager.NetworkCallback() { // from class: com.ironsource.sdk.service.Connectivity.e.1
                    @Override // android.net.ConnectivityManager.NetworkCallback
                    public final void onAvailable(Network network) {
                        if (network != null) {
                            d dVar = e.this.f12105c;
                            String a2 = com.ironsource.d.a.a(network, context);
                            com.ironsource.d.a.a(context, network);
                            dVar.a(a2);
                            return;
                        }
                        d dVar2 = e.this.f12105c;
                        String a3 = com.ironsource.d.a.a(context);
                        Context context2 = context;
                        com.ironsource.d.a.a(context2, com.ironsource.d.a.b(context2));
                        dVar2.a(a3);
                    }

                    @Override // android.net.ConnectivityManager.NetworkCallback
                    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                        if (network != null) {
                            e.this.f12105c.a(com.ironsource.d.a.a(network, context), com.ironsource.d.a.a(context, network));
                        }
                    }

                    @Override // android.net.ConnectivityManager.NetworkCallback
                    public final void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
                        if (network != null) {
                            e.this.f12105c.a(com.ironsource.d.a.a(network, context), com.ironsource.d.a.a(context, network));
                        }
                    }

                    @Override // android.net.ConnectivityManager.NetworkCallback
                    public final void onLost(Network network) {
                        if (com.ironsource.d.a.a(context).equals("none")) {
                            e.this.f12105c.a();
                        }
                    }
                };
            }
            NetworkRequest build = new NetworkRequest.Builder().addCapability(12).build();
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager != null) {
                    connectivityManager.registerNetworkCallback(build, this.f12106d);
                }
            } catch (Exception unused) {
                Log.e(this.f12103a, "NetworkCallback was not able to register");
            }
        }
    }

    @Override // com.ironsource.sdk.service.Connectivity.c
    public final void b(Context context) {
        ConnectivityManager connectivityManager;
        if (Build.VERSION.SDK_INT < this.f12104b || this.f12106d == null || context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return;
        }
        try {
            connectivityManager.unregisterNetworkCallback(this.f12106d);
        } catch (Exception unused) {
            Log.e(this.f12103a, "NetworkCallback for was not registered or already unregistered");
        }
    }

    @Override // com.ironsource.sdk.service.Connectivity.c
    public final JSONObject c(Context context) {
        return com.ironsource.d.a.a(context, com.ironsource.d.a.b(context));
    }
}
