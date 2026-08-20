package com.applovin.exoplayer2.k;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.ApplicationMediaCapabilities;
import android.net.Uri;
import android.os.Bundle;
import com.applovin.exoplayer2.l.ai;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
/* loaded from: classes.dex */
public final class f extends e {

    /* renamed from: a  reason: collision with root package name */
    private final ContentResolver f3609a;

    /* renamed from: b  reason: collision with root package name */
    private Uri f3610b;

    /* renamed from: c  reason: collision with root package name */
    private AssetFileDescriptor f3611c;

    /* renamed from: d  reason: collision with root package name */
    private FileInputStream f3612d;

    /* renamed from: e  reason: collision with root package name */
    private long f3613e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f3614f;

    /* loaded from: classes.dex */
    private static final class a {
        public static void a(Bundle bundle) {
            bundle.putParcelable("android.provider.extra.MEDIA_CAPABILITIES", new ApplicationMediaCapabilities.Builder().addSupportedVideoMimeType("video/hevc").addSupportedHdrType("android.media.feature.hdr.dolby_vision").addSupportedHdrType("android.media.feature.hdr.hdr10").addSupportedHdrType("android.media.feature.hdr.hdr10_plus").addSupportedHdrType("android.media.feature.hdr.hlg").build());
        }
    }

    /* loaded from: classes.dex */
    public static class b extends j {
        public b(IOException iOException, int i) {
            super(iOException, i);
        }
    }

    public f(Context context) {
        super(false);
        this.f3609a = context.getContentResolver();
    }

    @Override // com.applovin.exoplayer2.k.g
    public int a(byte[] bArr, int i, int i2) throws b {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f3613e;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e2) {
                throw new b(e2, 2000);
            }
        }
        int read = ((FileInputStream) ai.a(this.f3612d)).read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        long j2 = this.f3613e;
        if (j2 != -1) {
            this.f3613e = j2 - read;
        }
        a(read);
        return read;
    }

    @Override // com.applovin.exoplayer2.k.i
    public long a(l lVar) throws b {
        AssetFileDescriptor openAssetFileDescriptor;
        try {
            Uri uri = lVar.f3626a;
            this.f3610b = uri;
            b(lVar);
            if ("content".equals(lVar.f3626a.getScheme())) {
                Bundle bundle = new Bundle();
                if (ai.f3781a >= 31) {
                    a.a(bundle);
                }
                openAssetFileDescriptor = this.f3609a.openTypedAssetFileDescriptor(uri, "*/*", bundle);
            } else {
                openAssetFileDescriptor = this.f3609a.openAssetFileDescriptor(uri, "r");
            }
            this.f3611c = openAssetFileDescriptor;
            if (openAssetFileDescriptor != null) {
                long length = openAssetFileDescriptor.getLength();
                FileInputStream fileInputStream = new FileInputStream(openAssetFileDescriptor.getFileDescriptor());
                this.f3612d = fileInputStream;
                int i = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
                if (i != 0 && lVar.f3632g > length) {
                    throw new b(null, 2008);
                }
                long startOffset = openAssetFileDescriptor.getStartOffset();
                long skip = fileInputStream.skip(lVar.f3632g + startOffset) - startOffset;
                if (skip == lVar.f3632g) {
                    if (i == 0) {
                        FileChannel channel = fileInputStream.getChannel();
                        long size = channel.size();
                        if (size == 0) {
                            this.f3613e = -1L;
                        } else {
                            long position = size - channel.position();
                            this.f3613e = position;
                            if (position < 0) {
                                throw new b(null, 2008);
                            }
                        }
                    } else {
                        long j = length - skip;
                        this.f3613e = j;
                        if (j < 0) {
                            throw new b(null, 2008);
                        }
                    }
                    if (lVar.f3633h != -1) {
                        long j2 = this.f3613e;
                        this.f3613e = j2 == -1 ? lVar.f3633h : Math.min(j2, lVar.f3633h);
                    }
                    this.f3614f = true;
                    c(lVar);
                    return lVar.f3633h != -1 ? lVar.f3633h : this.f3613e;
                }
                throw new b(null, 2008);
            }
            throw new b(new IOException("Could not open file descriptor for: " + uri), 2000);
        } catch (b e2) {
            throw e2;
        } catch (IOException e3) {
            throw new b(e3, e3 instanceof FileNotFoundException ? 2005 : 2000);
        }
    }

    @Override // com.applovin.exoplayer2.k.i
    public Uri a() {
        return this.f3610b;
    }

    @Override // com.applovin.exoplayer2.k.i
    public void c() throws b {
        this.f3610b = null;
        try {
            try {
                FileInputStream fileInputStream = this.f3612d;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.f3612d = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f3611c;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } finally {
                        this.f3611c = null;
                        if (this.f3614f) {
                            this.f3614f = false;
                            d();
                        }
                    }
                } catch (IOException e2) {
                    throw new b(e2, 2000);
                }
            } catch (IOException e3) {
                throw new b(e3, 2000);
            }
        } catch (Throwable th) {
            this.f3612d = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f3611c;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.f3611c = null;
                    if (this.f3614f) {
                        this.f3614f = false;
                        d();
                    }
                    throw th;
                } catch (IOException e4) {
                    throw new b(e4, 2000);
                }
            } finally {
                this.f3611c = null;
                if (this.f3614f) {
                    this.f3614f = false;
                    d();
                }
            }
        }
    }
}
