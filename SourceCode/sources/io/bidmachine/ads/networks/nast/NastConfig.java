package io.bidmachine.ads.networks.nast;

import io.bidmachine.NetworkAdapter;
import io.bidmachine.NetworkConfig;
/* loaded from: classes5.dex */
public class NastConfig extends NetworkConfig {
    public NastConfig() {
        super("nast", null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.NetworkConfig
    public NetworkAdapter createNetworkAdapter() {
        return new NastAdapter();
    }
}
