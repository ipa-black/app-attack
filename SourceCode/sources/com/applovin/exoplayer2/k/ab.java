package com.applovin.exoplayer2.k;

import android.net.Uri;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;
/* loaded from: classes.dex */
public final class ab extends e {

    /* renamed from: a  reason: collision with root package name */
    private final int f3588a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f3589b;

    /* renamed from: c  reason: collision with root package name */
    private final DatagramPacket f3590c;

    /* renamed from: d  reason: collision with root package name */
    private Uri f3591d;

    /* renamed from: e  reason: collision with root package name */
    private DatagramSocket f3592e;

    /* renamed from: f  reason: collision with root package name */
    private MulticastSocket f3593f;

    /* renamed from: g  reason: collision with root package name */
    private InetAddress f3594g;

    /* renamed from: h  reason: collision with root package name */
    private InetSocketAddress f3595h;
    private boolean i;
    private int j;

    /* loaded from: classes.dex */
    public static final class a extends j {
        public a(Throwable th, int i) {
            super(th, i);
        }
    }

    public ab() {
        this(2000);
    }

    public ab(int i) {
        this(i, 8000);
    }

    public ab(int i, int i2) {
        super(true);
        this.f3588a = i2;
        byte[] bArr = new byte[i];
        this.f3589b = bArr;
        this.f3590c = new DatagramPacket(bArr, 0, i);
    }

    @Override // com.applovin.exoplayer2.k.g
    public int a(byte[] bArr, int i, int i2) throws a {
        if (i2 == 0) {
            return 0;
        }
        if (this.j == 0) {
            try {
                this.f3592e.receive(this.f3590c);
                int length = this.f3590c.getLength();
                this.j = length;
                a(length);
            } catch (SocketTimeoutException e2) {
                throw new a(e2, 2002);
            } catch (IOException e3) {
                throw new a(e3, 2001);
            }
        }
        int length2 = this.f3590c.getLength();
        int i3 = this.j;
        int min = Math.min(i3, i2);
        System.arraycopy(this.f3589b, length2 - i3, bArr, i, min);
        this.j -= min;
        return min;
    }

    @Override // com.applovin.exoplayer2.k.i
    public long a(l lVar) throws a {
        DatagramSocket datagramSocket;
        Uri uri = lVar.f3626a;
        this.f3591d = uri;
        String host = uri.getHost();
        int port = this.f3591d.getPort();
        b(lVar);
        try {
            this.f3594g = InetAddress.getByName(host);
            this.f3595h = new InetSocketAddress(this.f3594g, port);
            if (this.f3594g.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(this.f3595h);
                this.f3593f = multicastSocket;
                multicastSocket.joinGroup(this.f3594g);
                datagramSocket = this.f3593f;
            } else {
                datagramSocket = new DatagramSocket(this.f3595h);
            }
            this.f3592e = datagramSocket;
            this.f3592e.setSoTimeout(this.f3588a);
            this.i = true;
            c(lVar);
            return -1L;
        } catch (IOException e2) {
            throw new a(e2, 2001);
        } catch (SecurityException e3) {
            throw new a(e3, 2006);
        }
    }

    @Override // com.applovin.exoplayer2.k.i
    public Uri a() {
        return this.f3591d;
    }

    @Override // com.applovin.exoplayer2.k.i
    public void c() {
        this.f3591d = null;
        MulticastSocket multicastSocket = this.f3593f;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup(this.f3594g);
            } catch (IOException unused) {
            }
            this.f3593f = null;
        }
        DatagramSocket datagramSocket = this.f3592e;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f3592e = null;
        }
        this.f3594g = null;
        this.f3595h = null;
        this.j = 0;
        if (this.i) {
            this.i = false;
            d();
        }
    }
}
