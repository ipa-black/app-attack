package com.yandex.metrica.impl.ob;

import android.app.usage.StorageStatsManager;
import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import java.util.UUID;
/* renamed from: com.yandex.metrica.impl.ob.q0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1796q0 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f15436a;

    /* renamed from: b  reason: collision with root package name */
    private final b f15437b;

    /* renamed from: com.yandex.metrica.impl.ob.q0$a */
    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f15438a;

        /* renamed from: b  reason: collision with root package name */
        public final long f15439b;

        public a(long j, long j2) {
            this.f15438a = j;
            this.f15439b = j2;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.q0$b */
    /* loaded from: classes5.dex */
    static class b {
        b() {
        }
    }

    public C1796q0(Context context) {
        this(context, new b());
    }

    public a a() {
        StatFs statFs;
        long j;
        long j2 = 0;
        if (A2.a(26)) {
            StorageStatsManager storageStatsManager = (StorageStatsManager) this.f15436a.getSystemService("storagestats");
            StorageManager storageManager = (StorageManager) this.f15436a.getSystemService("storage");
            if (storageManager == null || storageStatsManager == null) {
                j = 0;
            } else {
                long j3 = 0;
                for (StorageVolume storageVolume : storageManager.getStorageVolumes()) {
                    try {
                        String uuid = storageVolume.getUuid();
                        UUID fromString = uuid == null ? StorageManager.UUID_DEFAULT : UUID.fromString(uuid);
                        j2 += storageStatsManager.getTotalBytes(fromString);
                        j3 += storageStatsManager.getFreeBytes(fromString);
                    } catch (Throwable unused) {
                    }
                }
                long j4 = j2;
                j2 = j3;
                j = j4;
            }
            return new a(j / 1024, j2 / 1024);
        } else if (A2.a(18)) {
            try {
                this.f15437b.getClass();
                StatFs statFs2 = new StatFs(Environment.getDataDirectory().getAbsolutePath());
                long blockSizeLong = statFs2.getBlockSizeLong();
                return new a((statFs2.getBlockCountLong() * blockSizeLong) / 1024, (statFs2.getAvailableBlocksLong() * blockSizeLong) / 1024);
            } catch (Throwable unused2) {
                return new a(0L, 0L);
            }
        } else {
            try {
                this.f15437b.getClass();
                long blockSize = new StatFs(Environment.getDataDirectory().getAbsolutePath()).getBlockSize();
                return new a((statFs.getBlockCount() * blockSize) / 1024, (statFs.getAvailableBlocks() * blockSize) / 1024);
            } catch (Throwable unused3) {
                return new a(0L, 0L);
            }
        }
    }

    C1796q0(Context context, b bVar) {
        this.f15436a = context;
        this.f15437b = bVar;
    }
}
