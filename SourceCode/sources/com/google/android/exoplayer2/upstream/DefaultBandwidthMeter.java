package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.os.Handler;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Clock;
import com.google.android.exoplayer2.util.NetworkTypeObserver;
import com.google.android.exoplayer2.util.Util;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.base.Ascii;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.HashMap;
import java.util.Map;
import kotlin.text.Typography;
import org.altbeacon.beacon.service.scanner.CycledLeScanner;
/* loaded from: classes3.dex */
public final class DefaultBandwidthMeter implements BandwidthMeter, TransferListener {
    private static final int BYTES_TRANSFERRED_FOR_ESTIMATE = 524288;
    private static final int COUNTRY_GROUP_INDEX_2G = 1;
    private static final int COUNTRY_GROUP_INDEX_3G = 2;
    private static final int COUNTRY_GROUP_INDEX_4G = 3;
    private static final int COUNTRY_GROUP_INDEX_5G_NSA = 4;
    private static final int COUNTRY_GROUP_INDEX_5G_SA = 5;
    private static final int COUNTRY_GROUP_INDEX_WIFI = 0;
    public static final long DEFAULT_INITIAL_BITRATE_ESTIMATE = 1000000;
    public static final int DEFAULT_SLIDING_WINDOW_MAX_WEIGHT = 2000;
    private static final int ELAPSED_MILLIS_FOR_ESTIMATE = 2000;
    private static DefaultBandwidthMeter singletonInstance;
    private long bitrateEstimate;
    private final Clock clock;
    private final BandwidthMeter.EventListener.EventDispatcher eventDispatcher;
    private final ImmutableMap<Integer, Long> initialBitrateEstimates;
    private long lastReportedBitrateEstimate;
    private int networkType;
    private int networkTypeOverride;
    private boolean networkTypeOverrideSet;
    private final boolean resetOnNetworkTypeChange;
    private long sampleBytesTransferred;
    private long sampleStartTimeMs;
    private final SlidingPercentile slidingPercentile;
    private int streamCount;
    private long totalBytesTransferred;
    private long totalElapsedTimeMs;
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI = ImmutableList.of(5400000L, 3300000L, 2000000L, 1300000L, 760000L);
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_2G = ImmutableList.of(1700000L, 820000L, 450000L, 180000L, 130000L);
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_3G = ImmutableList.of(2300000L, 1300000L, 1000000L, 820000L, 570000L);
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_4G = ImmutableList.of(3400000L, 2000000L, 1400000L, 1000000L, 620000L);
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA = ImmutableList.of(7500000L, 5200000L, 3700000L, (long) Long.valueOf((long) CycledLeScanner.ANDROID_N_MAX_SCAN_DURATION_MILLIS), 1100000L);
    public static final ImmutableList<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA = ImmutableList.of(3300000L, 1900000L, 1700000L, 1500000L, 1200000L);

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public TransferListener getTransferListener() {
        return this;
    }

    @Override // com.google.android.exoplayer2.upstream.TransferListener
    public void onTransferInitializing(DataSource dataSource, DataSpec dataSpec, boolean z) {
    }

    /* loaded from: classes3.dex */
    public static final class Builder {
        private Clock clock;
        private final Context context;
        private Map<Integer, Long> initialBitrateEstimates;
        private boolean resetOnNetworkTypeChange;
        private int slidingWindowMaxWeight;

        public Builder(Context context) {
            this.context = context == null ? null : context.getApplicationContext();
            this.initialBitrateEstimates = getInitialBitrateEstimatesForCountry(Util.getCountryCode(context));
            this.slidingWindowMaxWeight = 2000;
            this.clock = Clock.DEFAULT;
            this.resetOnNetworkTypeChange = true;
        }

        public Builder setSlidingWindowMaxWeight(int i) {
            this.slidingWindowMaxWeight = i;
            return this;
        }

        public Builder setInitialBitrateEstimate(long j) {
            for (Integer num : this.initialBitrateEstimates.keySet()) {
                setInitialBitrateEstimate(num.intValue(), j);
            }
            return this;
        }

        public Builder setInitialBitrateEstimate(int i, long j) {
            this.initialBitrateEstimates.put(Integer.valueOf(i), Long.valueOf(j));
            return this;
        }

        public Builder setInitialBitrateEstimate(String str) {
            this.initialBitrateEstimates = getInitialBitrateEstimatesForCountry(Ascii.toUpperCase(str));
            return this;
        }

        public Builder setClock(Clock clock) {
            this.clock = clock;
            return this;
        }

        public Builder setResetOnNetworkTypeChange(boolean z) {
            this.resetOnNetworkTypeChange = z;
            return this;
        }

        public DefaultBandwidthMeter build() {
            return new DefaultBandwidthMeter(this.context, this.initialBitrateEstimates, this.slidingWindowMaxWeight, this.clock, this.resetOnNetworkTypeChange);
        }

        private static Map<Integer, Long> getInitialBitrateEstimatesForCountry(String str) {
            int[] initialBitrateCountryGroupAssignment = DefaultBandwidthMeter.getInitialBitrateCountryGroupAssignment(str);
            HashMap hashMap = new HashMap(8);
            hashMap.put(0, 1000000L);
            hashMap.put(2, DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI.get(initialBitrateCountryGroupAssignment[0]));
            hashMap.put(3, DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_2G.get(initialBitrateCountryGroupAssignment[1]));
            hashMap.put(4, DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_3G.get(initialBitrateCountryGroupAssignment[2]));
            hashMap.put(5, DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_4G.get(initialBitrateCountryGroupAssignment[3]));
            hashMap.put(10, DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA.get(initialBitrateCountryGroupAssignment[4]));
            hashMap.put(9, DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA.get(initialBitrateCountryGroupAssignment[5]));
            hashMap.put(7, DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI.get(initialBitrateCountryGroupAssignment[0]));
            return hashMap;
        }
    }

    public static synchronized DefaultBandwidthMeter getSingletonInstance(Context context) {
        DefaultBandwidthMeter defaultBandwidthMeter;
        synchronized (DefaultBandwidthMeter.class) {
            if (singletonInstance == null) {
                singletonInstance = new Builder(context).build();
            }
            defaultBandwidthMeter = singletonInstance;
        }
        return defaultBandwidthMeter;
    }

    @Deprecated
    public DefaultBandwidthMeter() {
        this(null, ImmutableMap.of(), 2000, Clock.DEFAULT, false);
    }

    private DefaultBandwidthMeter(Context context, Map<Integer, Long> map, int i, Clock clock, boolean z) {
        this.initialBitrateEstimates = ImmutableMap.copyOf((Map) map);
        this.eventDispatcher = new BandwidthMeter.EventListener.EventDispatcher();
        this.slidingPercentile = new SlidingPercentile(i);
        this.clock = clock;
        this.resetOnNetworkTypeChange = z;
        if (context != null) {
            NetworkTypeObserver networkTypeObserver = NetworkTypeObserver.getInstance(context);
            int networkType = networkTypeObserver.getNetworkType();
            this.networkType = networkType;
            this.bitrateEstimate = getInitialBitrateEstimateForNetworkType(networkType);
            networkTypeObserver.register(new NetworkTypeObserver.Listener() { // from class: com.google.android.exoplayer2.upstream.DefaultBandwidthMeter$$ExternalSyntheticLambda0
                @Override // com.google.android.exoplayer2.util.NetworkTypeObserver.Listener
                public final void onNetworkTypeChanged(int i2) {
                    DefaultBandwidthMeter.this.onNetworkTypeChanged(i2);
                }
            });
            return;
        }
        this.networkType = 0;
        this.bitrateEstimate = getInitialBitrateEstimateForNetworkType(0);
    }

    public synchronized void setNetworkTypeOverride(int i) {
        this.networkTypeOverride = i;
        this.networkTypeOverrideSet = true;
        onNetworkTypeChanged(i);
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public synchronized long getBitrateEstimate() {
        return this.bitrateEstimate;
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public void addEventListener(Handler handler, BandwidthMeter.EventListener eventListener) {
        Assertions.checkNotNull(handler);
        Assertions.checkNotNull(eventListener);
        this.eventDispatcher.addListener(handler, eventListener);
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public void removeEventListener(BandwidthMeter.EventListener eventListener) {
        this.eventDispatcher.removeListener(eventListener);
    }

    @Override // com.google.android.exoplayer2.upstream.TransferListener
    public synchronized void onTransferStart(DataSource dataSource, DataSpec dataSpec, boolean z) {
        if (isTransferAtFullNetworkSpeed(dataSpec, z)) {
            if (this.streamCount == 0) {
                this.sampleStartTimeMs = this.clock.elapsedRealtime();
            }
            this.streamCount++;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.TransferListener
    public synchronized void onBytesTransferred(DataSource dataSource, DataSpec dataSpec, boolean z, int i) {
        if (isTransferAtFullNetworkSpeed(dataSpec, z)) {
            this.sampleBytesTransferred += i;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.TransferListener
    public synchronized void onTransferEnd(DataSource dataSource, DataSpec dataSpec, boolean z) {
        if (isTransferAtFullNetworkSpeed(dataSpec, z)) {
            Assertions.checkState(this.streamCount > 0);
            long elapsedRealtime = this.clock.elapsedRealtime();
            int i = (int) (elapsedRealtime - this.sampleStartTimeMs);
            this.totalElapsedTimeMs += i;
            long j = this.totalBytesTransferred;
            long j2 = this.sampleBytesTransferred;
            this.totalBytesTransferred = j + j2;
            if (i > 0) {
                this.slidingPercentile.addSample((int) Math.sqrt(j2), (((float) j2) * 8000.0f) / i);
                if (this.totalElapsedTimeMs >= ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS || this.totalBytesTransferred >= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) {
                    this.bitrateEstimate = this.slidingPercentile.getPercentile(0.5f);
                }
                maybeNotifyBandwidthSample(i, this.sampleBytesTransferred, this.bitrateEstimate);
                this.sampleStartTimeMs = elapsedRealtime;
                this.sampleBytesTransferred = 0L;
            }
            this.streamCount--;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void onNetworkTypeChanged(int i) {
        int i2 = this.networkType;
        if (i2 == 0 || this.resetOnNetworkTypeChange) {
            if (this.networkTypeOverrideSet) {
                i = this.networkTypeOverride;
            }
            if (i2 == i) {
                return;
            }
            this.networkType = i;
            if (i != 1 && i != 0 && i != 8) {
                this.bitrateEstimate = getInitialBitrateEstimateForNetworkType(i);
                long elapsedRealtime = this.clock.elapsedRealtime();
                maybeNotifyBandwidthSample(this.streamCount > 0 ? (int) (elapsedRealtime - this.sampleStartTimeMs) : 0, this.sampleBytesTransferred, this.bitrateEstimate);
                this.sampleStartTimeMs = elapsedRealtime;
                this.sampleBytesTransferred = 0L;
                this.totalBytesTransferred = 0L;
                this.totalElapsedTimeMs = 0L;
                this.slidingPercentile.reset();
            }
        }
    }

    private void maybeNotifyBandwidthSample(int i, long j, long j2) {
        if (i == 0 && j == 0 && j2 == this.lastReportedBitrateEstimate) {
            return;
        }
        this.lastReportedBitrateEstimate = j2;
        this.eventDispatcher.bandwidthSample(i, j, j2);
    }

    private long getInitialBitrateEstimateForNetworkType(int i) {
        Long l = this.initialBitrateEstimates.get(Integer.valueOf(i));
        if (l == null) {
            l = this.initialBitrateEstimates.get(0);
        }
        if (l == null) {
            l = 1000000L;
        }
        return l.longValue();
    }

    private static boolean isTransferAtFullNetworkSpeed(DataSpec dataSpec, boolean z) {
        return z && !dataSpec.isFlagSet(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int[] getInitialBitrateCountryGroupAssignment(String str) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case 2083:
                if (str.equals("AD")) {
                    c2 = 0;
                    break;
                }
                break;
            case 2084:
                if (str.equals("AE")) {
                    c2 = 1;
                    break;
                }
                break;
            case 2085:
                if (str.equals("AF")) {
                    c2 = 2;
                    break;
                }
                break;
            case 2086:
                if (str.equals("AG")) {
                    c2 = 3;
                    break;
                }
                break;
            case 2088:
                if (str.equals("AI")) {
                    c2 = 4;
                    break;
                }
                break;
            case 2091:
                if (str.equals("AL")) {
                    c2 = 5;
                    break;
                }
                break;
            case 2092:
                if (str.equals("AM")) {
                    c2 = 6;
                    break;
                }
                break;
            case 2094:
                if (str.equals("AO")) {
                    c2 = 7;
                    break;
                }
                break;
            case 2096:
                if (str.equals("AQ")) {
                    c2 = '\b';
                    break;
                }
                break;
            case 2097:
                if (str.equals("AR")) {
                    c2 = '\t';
                    break;
                }
                break;
            case 2098:
                if (str.equals("AS")) {
                    c2 = '\n';
                    break;
                }
                break;
            case 2099:
                if (str.equals("AT")) {
                    c2 = 11;
                    break;
                }
                break;
            case 2100:
                if (str.equals("AU")) {
                    c2 = '\f';
                    break;
                }
                break;
            case IronSourceConstants.IS_CHECK_READY_FALSE /* 2102 */:
                if (str.equals("AW")) {
                    c2 = '\r';
                    break;
                }
                break;
            case IronSourceConstants.IS_CHECK_CAPPED_TRUE /* 2103 */:
                if (str.equals("AX")) {
                    c2 = 14;
                    break;
                }
                break;
            case 2105:
                if (str.equals("AZ")) {
                    c2 = 15;
                    break;
                }
                break;
            case IronSourceConstants.IS_CALLBACK_AD_SHOW_ERROR /* 2111 */:
                if (str.equals("BA")) {
                    c2 = 16;
                    break;
                }
                break;
            case 2112:
                if (str.equals("BB")) {
                    c2 = 17;
                    break;
                }
                break;
            case 2114:
                if (str.equals("BD")) {
                    c2 = 18;
                    break;
                }
                break;
            case 2115:
                if (str.equals("BE")) {
                    c2 = 19;
                    break;
                }
                break;
            case 2116:
                if (str.equals("BF")) {
                    c2 = 20;
                    break;
                }
                break;
            case 2117:
                if (str.equals("BG")) {
                    c2 = 21;
                    break;
                }
                break;
            case 2118:
                if (str.equals("BH")) {
                    c2 = 22;
                    break;
                }
                break;
            case 2119:
                if (str.equals("BI")) {
                    c2 = 23;
                    break;
                }
                break;
            case 2120:
                if (str.equals("BJ")) {
                    c2 = 24;
                    break;
                }
                break;
            case 2122:
                if (str.equals("BL")) {
                    c2 = 25;
                    break;
                }
                break;
            case 2123:
                if (str.equals("BM")) {
                    c2 = 26;
                    break;
                }
                break;
            case 2124:
                if (str.equals("BN")) {
                    c2 = 27;
                    break;
                }
                break;
            case 2125:
                if (str.equals("BO")) {
                    c2 = 28;
                    break;
                }
                break;
            case 2127:
                if (str.equals("BQ")) {
                    c2 = 29;
                    break;
                }
                break;
            case 2128:
                if (str.equals("BR")) {
                    c2 = 30;
                    break;
                }
                break;
            case 2129:
                if (str.equals("BS")) {
                    c2 = 31;
                    break;
                }
                break;
            case 2130:
                if (str.equals("BT")) {
                    c2 = ' ';
                    break;
                }
                break;
            case 2133:
                if (str.equals("BW")) {
                    c2 = '!';
                    break;
                }
                break;
            case 2135:
                if (str.equals("BY")) {
                    c2 = Typography.quote;
                    break;
                }
                break;
            case 2136:
                if (str.equals("BZ")) {
                    c2 = '#';
                    break;
                }
                break;
            case 2142:
                if (str.equals("CA")) {
                    c2 = '$';
                    break;
                }
                break;
            case 2145:
                if (str.equals("CD")) {
                    c2 = '%';
                    break;
                }
                break;
            case 2147:
                if (str.equals("CF")) {
                    c2 = Typography.amp;
                    break;
                }
                break;
            case 2148:
                if (str.equals("CG")) {
                    c2 = '\'';
                    break;
                }
                break;
            case 2149:
                if (str.equals("CH")) {
                    c2 = '(';
                    break;
                }
                break;
            case 2150:
                if (str.equals("CI")) {
                    c2 = ')';
                    break;
                }
                break;
            case 2152:
                if (str.equals("CK")) {
                    c2 = '*';
                    break;
                }
                break;
            case 2153:
                if (str.equals("CL")) {
                    c2 = '+';
                    break;
                }
                break;
            case 2154:
                if (str.equals("CM")) {
                    c2 = ',';
                    break;
                }
                break;
            case 2155:
                if (str.equals("CN")) {
                    c2 = '-';
                    break;
                }
                break;
            case 2156:
                if (str.equals("CO")) {
                    c2 = '.';
                    break;
                }
                break;
            case 2159:
                if (str.equals("CR")) {
                    c2 = '/';
                    break;
                }
                break;
            case 2162:
                if (str.equals("CU")) {
                    c2 = '0';
                    break;
                }
                break;
            case 2163:
                if (str.equals("CV")) {
                    c2 = '1';
                    break;
                }
                break;
            case 2164:
                if (str.equals("CW")) {
                    c2 = '2';
                    break;
                }
                break;
            case 2165:
                if (str.equals("CX")) {
                    c2 = '3';
                    break;
                }
                break;
            case 2166:
                if (str.equals("CY")) {
                    c2 = '4';
                    break;
                }
                break;
            case 2167:
                if (str.equals("CZ")) {
                    c2 = '5';
                    break;
                }
                break;
            case 2177:
                if (str.equals("DE")) {
                    c2 = '6';
                    break;
                }
                break;
            case 2182:
                if (str.equals("DJ")) {
                    c2 = '7';
                    break;
                }
                break;
            case 2183:
                if (str.equals("DK")) {
                    c2 = '8';
                    break;
                }
                break;
            case 2185:
                if (str.equals("DM")) {
                    c2 = '9';
                    break;
                }
                break;
            case 2187:
                if (str.equals("DO")) {
                    c2 = ':';
                    break;
                }
                break;
            case 2198:
                if (str.equals("DZ")) {
                    c2 = ';';
                    break;
                }
                break;
            case IronSourceConstants.IS_INSTANCE_INIT_FAILED /* 2206 */:
                if (str.equals("EC")) {
                    c2 = Typography.less;
                    break;
                }
                break;
            case 2208:
                if (str.equals("EE")) {
                    c2 = '=';
                    break;
                }
                break;
            case IronSourceConstants.IS_INSTANCE_VISIBLE /* 2210 */:
                if (str.equals("EG")) {
                    c2 = Typography.greater;
                    break;
                }
                break;
            case 2221:
                if (str.equals("ER")) {
                    c2 = '?';
                    break;
                }
                break;
            case 2222:
                if (str.equals("ES")) {
                    c2 = '@';
                    break;
                }
                break;
            case 2223:
                if (str.equals("ET")) {
                    c2 = 'A';
                    break;
                }
                break;
            case 2243:
                if (str.equals("FI")) {
                    c2 = 'B';
                    break;
                }
                break;
            case 2244:
                if (str.equals("FJ")) {
                    c2 = 'C';
                    break;
                }
                break;
            case 2245:
                if (str.equals("FK")) {
                    c2 = 'D';
                    break;
                }
                break;
            case 2247:
                if (str.equals("FM")) {
                    c2 = 'E';
                    break;
                }
                break;
            case 2249:
                if (str.equals("FO")) {
                    c2 = 'F';
                    break;
                }
                break;
            case 2252:
                if (str.equals("FR")) {
                    c2 = 'G';
                    break;
                }
                break;
            case 2266:
                if (str.equals("GA")) {
                    c2 = 'H';
                    break;
                }
                break;
            case 2267:
                if (str.equals("GB")) {
                    c2 = 'I';
                    break;
                }
                break;
            case 2269:
                if (str.equals("GD")) {
                    c2 = 'J';
                    break;
                }
                break;
            case 2270:
                if (str.equals("GE")) {
                    c2 = 'K';
                    break;
                }
                break;
            case 2271:
                if (str.equals("GF")) {
                    c2 = 'L';
                    break;
                }
                break;
            case 2272:
                if (str.equals("GG")) {
                    c2 = 'M';
                    break;
                }
                break;
            case 2273:
                if (str.equals("GH")) {
                    c2 = 'N';
                    break;
                }
                break;
            case 2274:
                if (str.equals("GI")) {
                    c2 = 'O';
                    break;
                }
                break;
            case 2277:
                if (str.equals("GL")) {
                    c2 = 'P';
                    break;
                }
                break;
            case 2278:
                if (str.equals("GM")) {
                    c2 = 'Q';
                    break;
                }
                break;
            case 2279:
                if (str.equals("GN")) {
                    c2 = 'R';
                    break;
                }
                break;
            case 2281:
                if (str.equals("GP")) {
                    c2 = 'S';
                    break;
                }
                break;
            case 2282:
                if (str.equals("GQ")) {
                    c2 = 'T';
                    break;
                }
                break;
            case 2283:
                if (str.equals("GR")) {
                    c2 = 'U';
                    break;
                }
                break;
            case 2285:
                if (str.equals("GT")) {
                    c2 = 'V';
                    break;
                }
                break;
            case 2286:
                if (str.equals("GU")) {
                    c2 = 'W';
                    break;
                }
                break;
            case 2288:
                if (str.equals("GW")) {
                    c2 = 'X';
                    break;
                }
                break;
            case 2290:
                if (str.equals("GY")) {
                    c2 = 'Y';
                    break;
                }
                break;
            case 2307:
                if (str.equals("HK")) {
                    c2 = 'Z';
                    break;
                }
                break;
            case IronSourceConstants.IS_AUCTION_REQUEST_WATERFALL /* 2310 */:
                if (str.equals("HN")) {
                    c2 = '[';
                    break;
                }
                break;
            case 2314:
                if (str.equals("HR")) {
                    c2 = '\\';
                    break;
                }
                break;
            case 2316:
                if (str.equals("HT")) {
                    c2 = ']';
                    break;
                }
                break;
            case 2317:
                if (str.equals("HU")) {
                    c2 = '^';
                    break;
                }
                break;
            case 2331:
                if (str.equals("ID")) {
                    c2 = '_';
                    break;
                }
                break;
            case 2332:
                if (str.equals("IE")) {
                    c2 = '`';
                    break;
                }
                break;
            case 2339:
                if (str.equals("IL")) {
                    c2 = 'a';
                    break;
                }
                break;
            case 2340:
                if (str.equals("IM")) {
                    c2 = 'b';
                    break;
                }
                break;
            case 2341:
                if (str.equals("IN")) {
                    c2 = 'c';
                    break;
                }
                break;
            case 2342:
                if (str.equals("IO")) {
                    c2 = 'd';
                    break;
                }
                break;
            case 2344:
                if (str.equals("IQ")) {
                    c2 = 'e';
                    break;
                }
                break;
            case 2345:
                if (str.equals("IR")) {
                    c2 = 'f';
                    break;
                }
                break;
            case 2346:
                if (str.equals(IronSourceConstants.INTERSTITIAL_EVENT_TYPE)) {
                    c2 = 'g';
                    break;
                }
                break;
            case 2347:
                if (str.equals("IT")) {
                    c2 = 'h';
                    break;
                }
                break;
            case 2363:
                if (str.equals("JE")) {
                    c2 = 'i';
                    break;
                }
                break;
            case 2371:
                if (str.equals("JM")) {
                    c2 = 'j';
                    break;
                }
                break;
            case 2373:
                if (str.equals("JO")) {
                    c2 = 'k';
                    break;
                }
                break;
            case 2374:
                if (str.equals("JP")) {
                    c2 = 'l';
                    break;
                }
                break;
            case 2394:
                if (str.equals("KE")) {
                    c2 = 'm';
                    break;
                }
                break;
            case 2396:
                if (str.equals("KG")) {
                    c2 = 'n';
                    break;
                }
                break;
            case 2397:
                if (str.equals("KH")) {
                    c2 = 'o';
                    break;
                }
                break;
            case 2398:
                if (str.equals("KI")) {
                    c2 = 'p';
                    break;
                }
                break;
            case 2402:
                if (str.equals("KM")) {
                    c2 = 'q';
                    break;
                }
                break;
            case 2405:
                if (str.equals("KP")) {
                    c2 = 'r';
                    break;
                }
                break;
            case 2407:
                if (str.equals("KR")) {
                    c2 = 's';
                    break;
                }
                break;
            case 2412:
                if (str.equals("KW")) {
                    c2 = 't';
                    break;
                }
                break;
            case 2414:
                if (str.equals("KY")) {
                    c2 = 'u';
                    break;
                }
                break;
            case 2415:
                if (str.equals("KZ")) {
                    c2 = 'v';
                    break;
                }
                break;
            case 2421:
                if (str.equals("LA")) {
                    c2 = 'w';
                    break;
                }
                break;
            case 2422:
                if (str.equals("LB")) {
                    c2 = 'x';
                    break;
                }
                break;
            case 2423:
                if (str.equals("LC")) {
                    c2 = 'y';
                    break;
                }
                break;
            case 2429:
                if (str.equals("LI")) {
                    c2 = 'z';
                    break;
                }
                break;
            case 2431:
                if (str.equals("LK")) {
                    c2 = '{';
                    break;
                }
                break;
            case 2438:
                if (str.equals("LR")) {
                    c2 = '|';
                    break;
                }
                break;
            case 2439:
                if (str.equals("LS")) {
                    c2 = '}';
                    break;
                }
                break;
            case 2440:
                if (str.equals("LT")) {
                    c2 = '~';
                    break;
                }
                break;
            case 2441:
                if (str.equals("LU")) {
                    c2 = 127;
                    break;
                }
                break;
            case 2442:
                if (str.equals("LV")) {
                    c2 = 128;
                    break;
                }
                break;
            case 2445:
                if (str.equals("LY")) {
                    c2 = 129;
                    break;
                }
                break;
            case 2452:
                if (str.equals(RequestConfiguration.MAX_AD_CONTENT_RATING_MA)) {
                    c2 = 130;
                    break;
                }
                break;
            case 2454:
                if (str.equals("MC")) {
                    c2 = 131;
                    break;
                }
                break;
            case 2455:
                if (str.equals("MD")) {
                    c2 = 132;
                    break;
                }
                break;
            case 2456:
                if (str.equals("ME")) {
                    c2 = 133;
                    break;
                }
                break;
            case 2457:
                if (str.equals("MF")) {
                    c2 = 134;
                    break;
                }
                break;
            case 2458:
                if (str.equals("MG")) {
                    c2 = 135;
                    break;
                }
                break;
            case 2459:
                if (str.equals("MH")) {
                    c2 = 136;
                    break;
                }
                break;
            case 2462:
                if (str.equals("MK")) {
                    c2 = 137;
                    break;
                }
                break;
            case 2463:
                if (str.equals("ML")) {
                    c2 = 138;
                    break;
                }
                break;
            case 2464:
                if (str.equals("MM")) {
                    c2 = 139;
                    break;
                }
                break;
            case 2465:
                if (str.equals("MN")) {
                    c2 = 140;
                    break;
                }
                break;
            case 2466:
                if (str.equals("MO")) {
                    c2 = 141;
                    break;
                }
                break;
            case 2467:
                if (str.equals("MP")) {
                    c2 = 142;
                    break;
                }
                break;
            case 2468:
                if (str.equals("MQ")) {
                    c2 = 143;
                    break;
                }
                break;
            case 2469:
                if (str.equals("MR")) {
                    c2 = 144;
                    break;
                }
                break;
            case 2470:
                if (str.equals("MS")) {
                    c2 = 145;
                    break;
                }
                break;
            case 2471:
                if (str.equals("MT")) {
                    c2 = 146;
                    break;
                }
                break;
            case 2472:
                if (str.equals("MU")) {
                    c2 = 147;
                    break;
                }
                break;
            case 2473:
                if (str.equals("MV")) {
                    c2 = 148;
                    break;
                }
                break;
            case 2474:
                if (str.equals("MW")) {
                    c2 = 149;
                    break;
                }
                break;
            case 2475:
                if (str.equals("MX")) {
                    c2 = 150;
                    break;
                }
                break;
            case 2476:
                if (str.equals("MY")) {
                    c2 = 151;
                    break;
                }
                break;
            case 2477:
                if (str.equals("MZ")) {
                    c2 = 152;
                    break;
                }
                break;
            case 2483:
                if (str.equals("NA")) {
                    c2 = 153;
                    break;
                }
                break;
            case 2485:
                if (str.equals("NC")) {
                    c2 = 154;
                    break;
                }
                break;
            case 2487:
                if (str.equals("NE")) {
                    c2 = 155;
                    break;
                }
                break;
            case 2489:
                if (str.equals("NG")) {
                    c2 = 156;
                    break;
                }
                break;
            case 2491:
                if (str.equals("NI")) {
                    c2 = 157;
                    break;
                }
                break;
            case 2494:
                if (str.equals("NL")) {
                    c2 = 158;
                    break;
                }
                break;
            case 2497:
                if (str.equals("NO")) {
                    c2 = 159;
                    break;
                }
                break;
            case 2498:
                if (str.equals("NP")) {
                    c2 = Typography.nbsp;
                    break;
                }
                break;
            case 2500:
                if (str.equals("NR")) {
                    c2 = 161;
                    break;
                }
                break;
            case 2503:
                if (str.equals("NU")) {
                    c2 = Typography.cent;
                    break;
                }
                break;
            case 2508:
                if (str.equals("NZ")) {
                    c2 = Typography.pound;
                    break;
                }
                break;
            case 2526:
                if (str.equals("OM")) {
                    c2 = 164;
                    break;
                }
                break;
            case 2545:
                if (str.equals("PA")) {
                    c2 = 165;
                    break;
                }
                break;
            case 2549:
                if (str.equals("PE")) {
                    c2 = 166;
                    break;
                }
                break;
            case 2550:
                if (str.equals("PF")) {
                    c2 = Typography.section;
                    break;
                }
                break;
            case 2551:
                if (str.equals(RequestConfiguration.MAX_AD_CONTENT_RATING_PG)) {
                    c2 = 168;
                    break;
                }
                break;
            case 2552:
                if (str.equals("PH")) {
                    c2 = Typography.copyright;
                    break;
                }
                break;
            case 2555:
                if (str.equals("PK")) {
                    c2 = 170;
                    break;
                }
                break;
            case 2556:
                if (str.equals("PL")) {
                    c2 = 171;
                    break;
                }
                break;
            case 2557:
                if (str.equals("PM")) {
                    c2 = 172;
                    break;
                }
                break;
            case 2562:
                if (str.equals("PR")) {
                    c2 = 173;
                    break;
                }
                break;
            case 2563:
                if (str.equals("PS")) {
                    c2 = Typography.registered;
                    break;
                }
                break;
            case 2564:
                if (str.equals("PT")) {
                    c2 = 175;
                    break;
                }
                break;
            case 2567:
                if (str.equals("PW")) {
                    c2 = Typography.degree;
                    break;
                }
                break;
            case 2569:
                if (str.equals("PY")) {
                    c2 = Typography.plusMinus;
                    break;
                }
                break;
            case 2576:
                if (str.equals("QA")) {
                    c2 = 178;
                    break;
                }
                break;
            case 2611:
                if (str.equals("RE")) {
                    c2 = 179;
                    break;
                }
                break;
            case 2621:
                if (str.equals("RO")) {
                    c2 = 180;
                    break;
                }
                break;
            case 2625:
                if (str.equals("RS")) {
                    c2 = 181;
                    break;
                }
                break;
            case 2627:
                if (str.equals("RU")) {
                    c2 = Typography.paragraph;
                    break;
                }
                break;
            case 2629:
                if (str.equals("RW")) {
                    c2 = Typography.middleDot;
                    break;
                }
                break;
            case 2638:
                if (str.equals("SA")) {
                    c2 = 184;
                    break;
                }
                break;
            case 2639:
                if (str.equals("SB")) {
                    c2 = 185;
                    break;
                }
                break;
            case 2640:
                if (str.equals("SC")) {
                    c2 = 186;
                    break;
                }
                break;
            case 2641:
                if (str.equals("SD")) {
                    c2 = 187;
                    break;
                }
                break;
            case 2642:
                if (str.equals("SE")) {
                    c2 = 188;
                    break;
                }
                break;
            case 2644:
                if (str.equals("SG")) {
                    c2 = Typography.half;
                    break;
                }
                break;
            case 2645:
                if (str.equals("SH")) {
                    c2 = 190;
                    break;
                }
                break;
            case 2646:
                if (str.equals("SI")) {
                    c2 = 191;
                    break;
                }
                break;
            case 2647:
                if (str.equals("SJ")) {
                    c2 = 192;
                    break;
                }
                break;
            case 2648:
                if (str.equals("SK")) {
                    c2 = 193;
                    break;
                }
                break;
            case 2649:
                if (str.equals("SL")) {
                    c2 = 194;
                    break;
                }
                break;
            case 2650:
                if (str.equals("SM")) {
                    c2 = 195;
                    break;
                }
                break;
            case 2651:
                if (str.equals("SN")) {
                    c2 = 196;
                    break;
                }
                break;
            case 2652:
                if (str.equals("SO")) {
                    c2 = 197;
                    break;
                }
                break;
            case 2655:
                if (str.equals("SR")) {
                    c2 = 198;
                    break;
                }
                break;
            case 2656:
                if (str.equals("SS")) {
                    c2 = 199;
                    break;
                }
                break;
            case 2657:
                if (str.equals("ST")) {
                    c2 = 200;
                    break;
                }
                break;
            case 2659:
                if (str.equals("SV")) {
                    c2 = 201;
                    break;
                }
                break;
            case 2661:
                if (str.equals("SX")) {
                    c2 = 202;
                    break;
                }
                break;
            case 2662:
                if (str.equals("SY")) {
                    c2 = 203;
                    break;
                }
                break;
            case 2663:
                if (str.equals("SZ")) {
                    c2 = 204;
                    break;
                }
                break;
            case 2671:
                if (str.equals("TC")) {
                    c2 = 205;
                    break;
                }
                break;
            case 2672:
                if (str.equals("TD")) {
                    c2 = 206;
                    break;
                }
                break;
            case 2675:
                if (str.equals("TG")) {
                    c2 = 207;
                    break;
                }
                break;
            case 2676:
                if (str.equals("TH")) {
                    c2 = 208;
                    break;
                }
                break;
            case 2678:
                if (str.equals("TJ")) {
                    c2 = 209;
                    break;
                }
                break;
            case 2680:
                if (str.equals("TL")) {
                    c2 = 210;
                    break;
                }
                break;
            case 2681:
                if (str.equals("TM")) {
                    c2 = 211;
                    break;
                }
                break;
            case 2682:
                if (str.equals("TN")) {
                    c2 = 212;
                    break;
                }
                break;
            case 2683:
                if (str.equals("TO")) {
                    c2 = 213;
                    break;
                }
                break;
            case 2686:
                if (str.equals("TR")) {
                    c2 = 214;
                    break;
                }
                break;
            case 2688:
                if (str.equals("TT")) {
                    c2 = Typography.times;
                    break;
                }
                break;
            case 2690:
                if (str.equals("TV")) {
                    c2 = 216;
                    break;
                }
                break;
            case 2691:
                if (str.equals("TW")) {
                    c2 = 217;
                    break;
                }
                break;
            case 2694:
                if (str.equals("TZ")) {
                    c2 = 218;
                    break;
                }
                break;
            case 2700:
                if (str.equals("UA")) {
                    c2 = 219;
                    break;
                }
                break;
            case 2706:
                if (str.equals("UG")) {
                    c2 = 220;
                    break;
                }
                break;
            case 2718:
                if (str.equals("US")) {
                    c2 = 221;
                    break;
                }
                break;
            case 2724:
                if (str.equals("UY")) {
                    c2 = 222;
                    break;
                }
                break;
            case 2725:
                if (str.equals("UZ")) {
                    c2 = 223;
                    break;
                }
                break;
            case 2733:
                if (str.equals("VC")) {
                    c2 = 224;
                    break;
                }
                break;
            case 2735:
                if (str.equals("VE")) {
                    c2 = 225;
                    break;
                }
                break;
            case 2737:
                if (str.equals("VG")) {
                    c2 = 226;
                    break;
                }
                break;
            case 2739:
                if (str.equals("VI")) {
                    c2 = 227;
                    break;
                }
                break;
            case 2744:
                if (str.equals("VN")) {
                    c2 = 228;
                    break;
                }
                break;
            case 2751:
                if (str.equals("VU")) {
                    c2 = 229;
                    break;
                }
                break;
            case 2767:
                if (str.equals("WF")) {
                    c2 = 230;
                    break;
                }
                break;
            case 2780:
                if (str.equals("WS")) {
                    c2 = 231;
                    break;
                }
                break;
            case 2803:
                if (str.equals("XK")) {
                    c2 = 232;
                    break;
                }
                break;
            case 2828:
                if (str.equals("YE")) {
                    c2 = 233;
                    break;
                }
                break;
            case 2843:
                if (str.equals("YT")) {
                    c2 = 234;
                    break;
                }
                break;
            case 2855:
                if (str.equals("ZA")) {
                    c2 = 235;
                    break;
                }
                break;
            case 2867:
                if (str.equals("ZM")) {
                    c2 = 236;
                    break;
                }
                break;
            case 2877:
                if (str.equals("ZW")) {
                    c2 = 237;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
            case 26:
            case 'P':
            case 'y':
                return new int[]{1, 2, 0, 0, 2, 2};
            case 1:
                return new int[]{1, 4, 4, 4, 3, 2};
            case 2:
            case ']':
            case 155:
            case 187:
            case 196:
            case LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE_VALUE:
            case 225:
            case 233:
                return new int[]{4, 4, 4, 4, 2, 2};
            case 3:
                return new int[]{2, 3, 1, 2, 2, 2};
            case 4:
            case 25:
            case '3':
            case '9':
            case 'J':
            case 145:
            case 224:
                return new int[]{1, 2, 2, 2, 2, 2};
            case 5:
            case 16:
            case 'u':
                return new int[]{1, 2, 0, 1, 2, 2};
            case 6:
                return new int[]{2, 3, 2, 4, 2, 2};
            case 7:
            case ',':
                return new int[]{3, 4, 3, 2, 2, 2};
            case '\b':
            case '?':
            case 'd':
            case 162:
            case 190:
            case 199:
            case 216:
                return new int[]{4, 2, 2, 2, 2, 2};
            case '\t':
                return new int[]{2, 4, 1, 1, 2, 2};
            case '\n':
                return new int[]{2, 2, 2, 3, 2, 2};
            case 11:
            case '(':
            case 'g':
            case TsExtractor.TS_PACKET_SIZE /* 188 */:
            case 193:
                return new int[]{0, 0, 0, 0, 0, 2};
            case '\f':
                return new int[]{0, 1, 0, 1, 2, 2};
            case '\r':
            case 'W':
                return new int[]{1, 2, 4, 4, 2, 2};
            case 14:
            case 'O':
            case 'z':
            case 142:
            case TsExtractor.TS_STREAM_TYPE_AC4 /* 172 */:
            case 192:
            case 195:
                return new int[]{0, 2, 2, 2, 2, 2};
            case 15:
            case 154:
                return new int[]{3, 2, 4, 4, 2, 2};
            case 17:
            case 'F':
            case 'M':
                return new int[]{0, 2, 0, 0, 2, 2};
            case 18:
            case 151:
                return new int[]{2, 1, 3, 3, 2, 2};
            case 19:
                return new int[]{0, 0, 3, 3, 2, 2};
            case 20:
                return new int[]{4, 3, 4, 3, 2, 2};
            case 21:
            case '5':
            case 191:
                return new int[]{0, 0, 0, 0, 1, 2};
            case 22:
                return new int[]{1, 2, 2, 4, 4, 2};
            case 23:
            case ';':
            case LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED_VALUE:
            case LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE:
                return new int[]{4, 3, 4, 4, 2, 2};
            case 24:
                return new int[]{4, 4, 3, 4, 2, 2};
            case 27:
                return new int[]{3, 2, 1, 1, 2, 2};
            case 28:
                return new int[]{1, 3, 3, 2, 2, 2};
            case 29:
                return new int[]{1, 2, 2, 0, 2, 2};
            case 30:
            case 198:
                return new int[]{2, 3, 2, 2, 2, 2};
            case 31:
                return new int[]{4, 2, 2, 3, 2, 2};
            case ' ':
                return new int[]{3, 1, 3, 2, 2, 2};
            case '!':
            case 'Y':
                return new int[]{3, 4, 1, 0, 2, 2};
            case '\"':
                return new int[]{0, 1, 1, 3, 2, 2};
            case '#':
                return new int[]{2, 4, 2, 2, 2, 2};
            case '$':
                return new int[]{0, 2, 1, 2, 4, 1};
            case '%':
                return new int[]{4, 2, 3, 1, 2, 2};
            case '&':
                return new int[]{4, 2, 3, 2, 2, 2};
            case '\'':
            case IronSourceConstants.REWARDED_VIDEO_DAILY_CAPPED /* 150 */:
                return new int[]{2, 4, 3, 4, 2, 2};
            case ')':
                return new int[]{3, 3, 3, 4, 2, 2};
            case '*':
                return new int[]{2, 2, 2, 1, 2, 2};
            case '+':
            case 171:
            case 221:
                return new int[]{1, 1, 2, 2, 3, 2};
            case '-':
                return new int[]{2, 0, 2, 2, 3, 1};
            case '.':
                return new int[]{2, 2, 4, 2, 2, 2};
            case '/':
                return new int[]{2, 2, 4, 4, 2, 2};
            case '0':
            case 168:
                return new int[]{4, 4, 3, 2, 2, 2};
            case '1':
                return new int[]{2, 3, 1, 0, 2, 2};
            case '2':
                return new int[]{2, 2, 0, 0, 2, 2};
            case '4':
                return new int[]{1, 0, 0, 0, 1, 2};
            case '6':
                return new int[]{0, 0, 2, 2, 1, 2};
            case '7':
                return new int[]{4, 1, 4, 4, 2, 2};
            case '8':
                return new int[]{0, 0, 1, 0, 0, 2};
            case ':':
            case 'j':
                return new int[]{3, 4, 4, 4, 2, 2};
            case '<':
                return new int[]{2, 4, 2, 1, 2, 2};
            case '=':
            case '~':
            case 128:
            case 146:
                return new int[]{0, 0, 0, 0, 2, 2};
            case '>':
                return new int[]{3, 4, 2, 3, 2, 2};
            case '@':
            case '`':
                return new int[]{0, 1, 1, 1, 2, 2};
            case 'A':
                return new int[]{4, 4, 3, 1, 2, 2};
            case 'B':
                return new int[]{0, 0, 0, 1, 0, 2};
            case 'C':
                return new int[]{3, 1, 3, 3, 2, 2};
            case 'D':
            case 'r':
            case TsExtractor.TS_STREAM_TYPE_HDMV_DTS /* 130 */:
            case 152:
            case 200:
                return new int[]{3, 2, 2, 2, 2, 2};
            case 'E':
                return new int[]{3, 2, 4, 2, 2, 2};
            case 'G':
                return new int[]{1, 1, 2, 1, 1, 1};
            case 'H':
                return new int[]{2, 3, 1, 1, 2, 2};
            case 'I':
                return new int[]{0, 0, 1, 1, 2, 3};
            case 'K':
                return new int[]{1, 1, 1, 3, 2, 2};
            case 'L':
            case 'S':
            case 143:
                return new int[]{2, 1, 2, 3, 2, 2};
            case 'N':
                return new int[]{3, 2, 3, 2, 2, 2};
            case 'Q':
            case 230:
                return new int[]{4, 2, 2, 4, 2, 2};
            case 'R':
                return new int[]{4, 3, 4, 2, 2, 2};
            case 'T':
                return new int[]{4, 2, 3, 4, 2, 2};
            case 'U':
            case '\\':
            case 132:
            case 137:
            case 181:
                return new int[]{1, 0, 0, 0, 2, 2};
            case 'V':
                return new int[]{2, 3, 2, 1, 2, 2};
            case 'X':
            case 218:
                return new int[]{3, 4, 3, 3, 2, 2};
            case 'Z':
                return new int[]{0, 1, 2, 3, 2, 0};
            case '[':
            case 170:
            case 197:
                return new int[]{3, 2, 3, 3, 2, 2};
            case '^':
                return new int[]{0, 0, 0, 1, 3, 2};
            case '_':
                return new int[]{3, 2, 3, 3, 3, 2};
            case 'a':
                return new int[]{1, 1, 2, 3, 4, 2};
            case 'b':
                return new int[]{0, 2, 0, 1, 2, 2};
            case 'c':
                return new int[]{1, 1, 3, 2, 4, 3};
            case 'e':
            case 220:
                return new int[]{3, 3, 3, 3, 2, 2};
            case 'f':
                return new int[]{3, 0, 1, 1, 3, 0};
            case 'h':
                return new int[]{0, 1, 0, 1, 1, 2};
            case 'i':
                return new int[]{3, 2, 1, 2, 2, 2};
            case 'k':
            case 133:
                return new int[]{1, 0, 0, 1, 2, 2};
            case 'l':
                return new int[]{0, 1, 0, 1, 1, 1};
            case 'm':
                return new int[]{3, 3, 2, 2, 2, 2};
            case 'n':
                return new int[]{2, 1, 1, 1, 2, 2};
            case 'o':
                return new int[]{1, 1, 4, 2, 2, 2};
            case 'p':
            case 'q':
            case TsExtractor.TS_STREAM_TYPE_AC3 /* 129 */:
            case 185:
                return new int[]{4, 2, 4, 3, 2, 2};
            case 's':
                return new int[]{0, 0, 1, 3, 4, 4};
            case 't':
                return new int[]{1, 1, 0, 0, 0, 2};
            case 'v':
                return new int[]{1, 1, 2, 2, 2, 2};
            case 'w':
            case 222:
                return new int[]{2, 2, 1, 2, 2, 2};
            case 'x':
                return new int[]{3, 2, 1, 4, 2, 2};
            case '{':
                return new int[]{3, 1, 3, 4, 4, 2};
            case '|':
                return new int[]{3, 4, 4, 3, 2, 2};
            case '}':
                return new int[]{3, 3, 4, 3, 2, 2};
            case 127:
                return new int[]{1, 0, 2, 2, 2, 2};
            case 131:
                return new int[]{0, 2, 2, 0, 2, 2};
            case TsExtractor.TS_STREAM_TYPE_SPLICE_INFO /* 134 */:
                return new int[]{1, 2, 1, 0, 2, 2};
            case TsExtractor.TS_STREAM_TYPE_E_AC3 /* 135 */:
                return new int[]{3, 4, 2, 2, 2, 2};
            case 136:
                return new int[]{3, 2, 2, 4, 2, 2};
            case TsExtractor.TS_STREAM_TYPE_DTS /* 138 */:
                return new int[]{4, 3, 3, 1, 2, 2};
            case 139:
                return new int[]{2, 4, 3, 3, 2, 2};
            case IronSourceConstants.USING_CACHE_FOR_INIT_EVENT /* 140 */:
                return new int[]{2, 0, 1, 2, 2, 2};
            case 141:
                return new int[]{0, 2, 4, 4, 2, 2};
            case 144:
                return new int[]{4, 1, 3, 4, 2, 2};
            case 147:
                return new int[]{3, 1, 1, 2, 2, 2};
            case 148:
                return new int[]{3, 4, 1, 4, 2, 2};
            case 149:
                return new int[]{4, 2, 1, 0, 2, 2};
            case 153:
                return new int[]{4, 3, 2, 2, 2, 2};
            case 156:
                return new int[]{3, 4, 1, 1, 2, 2};
            case 157:
                return new int[]{2, 3, 4, 3, 2, 2};
            case 158:
                return new int[]{0, 0, 3, 2, 0, 4};
            case 159:
                return new int[]{0, 0, 2, 0, 0, 2};
            case 160:
                return new int[]{2, 1, 4, 3, 2, 2};
            case 161:
                return new int[]{3, 2, 2, 0, 2, 2};
            case 163:
                return new int[]{1, 0, 1, 2, 4, 2};
            case 164:
                return new int[]{2, 3, 1, 3, 4, 2};
            case 165:
                return new int[]{1, 3, 3, 3, 2, 2};
            case 166:
                return new int[]{2, 3, 4, 4, 4, 2};
            case 167:
                return new int[]{2, 3, 3, 1, 2, 2};
            case 169:
                return new int[]{2, 2, 3, 3, 3, 2};
            case 173:
                return new int[]{2, 3, 2, 2, 3, 3};
            case 174:
                return new int[]{3, 4, 1, 2, 2, 2};
            case 175:
                return new int[]{0, 1, 0, 0, 2, 2};
            case 176:
                return new int[]{2, 2, 4, 1, 2, 2};
            case 177:
                return new int[]{2, 2, 3, 2, 2, 2};
            case 178:
                return new int[]{2, 4, 2, 4, 4, 2};
            case 179:
                return new int[]{1, 1, 1, 2, 2, 2};
            case 180:
                return new int[]{0, 0, 1, 1, 1, 2};
            case 182:
                return new int[]{0, 0, 0, 1, 2, 2};
            case 183:
                return new int[]{3, 4, 3, 0, 2, 2};
            case 184:
            case LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL_VALUE:
            case 226:
                return new int[]{2, 2, 1, 1, 2, 2};
            case 186:
                return new int[]{4, 3, 0, 2, 2, 2};
            case PsExtractor.PRIVATE_STREAM_1 /* 189 */:
                return new int[]{1, 1, 2, 3, 1, 4};
            case 194:
                return new int[]{4, 3, 4, 1, 2, 2};
            case 201:
                return new int[]{2, 2, 3, 3, 2, 2};
            case 202:
            case LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE:
                return new int[]{2, 2, 1, 0, 2, 2};
            case 204:
                return new int[]{4, 3, 2, 4, 2, 2};
            case LOSS_REASON_CREATIVE_FILTERED_LANGUAGE_EXCLUSIONS_VALUE:
                return new int[]{3, 3, 2, 0, 2, 2};
            case LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE:
                return new int[]{0, 3, 2, 3, 3, 0};
            case LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS_VALUE:
                return new int[]{4, 2, 4, 4, 2, 2};
            case LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG_VALUE:
                return new int[]{4, 2, 4, 2, 2, 2};
            case 213:
                return new int[]{4, 2, 3, 3, 2, 2};
            case 214:
                return new int[]{1, 1, 0, 1, 2, 2};
            case 215:
                return new int[]{1, 4, 1, 1, 2, 2};
            case 217:
                return new int[]{0, 0, 0, 0, 0, 0};
            case 219:
                return new int[]{0, 3, 1, 1, 2, 2};
            case 223:
                return new int[]{2, 2, 3, 4, 2, 2};
            case 227:
                return new int[]{1, 2, 1, 3, 2, 2};
            case 228:
                return new int[]{0, 3, 3, 4, 2, 2};
            case 229:
                return new int[]{4, 2, 2, 1, 2, 2};
            case 231:
                return new int[]{3, 1, 2, 1, 2, 2};
            case 232:
                return new int[]{1, 1, 1, 1, 2, 2};
            case 234:
                return new int[]{4, 1, 1, 1, 2, 2};
            case 235:
                return new int[]{3, 3, 1, 1, 1, 2};
            case 236:
                return new int[]{3, 3, 4, 2, 2, 2};
            case 237:
                return new int[]{3, 2, 4, 3, 2, 2};
            default:
                return new int[]{2, 2, 2, 2, 2, 2};
        }
    }
}
