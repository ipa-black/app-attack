package com.danikula.videocache;

import android.text.TextUtils;
import com.danikula.videocache.sourcestorage.SourceInfoStorage;
import com.danikula.videocache.sourcestorage.SourceInfoStorageFactory;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.URL;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
/* loaded from: classes2.dex */
public class HttpUrlSource implements Source {
    private static final Logger LOG = LoggerFactory.getLogger("HttpUrlSource");
    private static final int MAX_REDIRECTS = 5;
    private HttpURLConnection connection;
    private InputStream inputStream;
    private SourceInfo sourceInfo;
    private final SourceInfoStorage sourceInfoStorage;

    public HttpUrlSource(String str) {
        this(str, SourceInfoStorageFactory.newEmptySourceInfoStorage());
    }

    public HttpUrlSource(String str, SourceInfoStorage sourceInfoStorage) {
        this.sourceInfoStorage = (SourceInfoStorage) Preconditions.checkNotNull(sourceInfoStorage);
        SourceInfo sourceInfo = sourceInfoStorage.get(str);
        this.sourceInfo = sourceInfo == null ? new SourceInfo(str, -2147483648L, ProxyCacheUtils.getSupposablyMime(str)) : sourceInfo;
    }

    public HttpUrlSource(HttpUrlSource httpUrlSource) {
        this.sourceInfo = httpUrlSource.sourceInfo;
        this.sourceInfoStorage = httpUrlSource.sourceInfoStorage;
    }

    @Override // com.danikula.videocache.Source
    public synchronized long length() throws ProxyCacheException {
        if (this.sourceInfo.length == -2147483648L) {
            fetchContentInfo();
        }
        return this.sourceInfo.length;
    }

    @Override // com.danikula.videocache.Source
    public void open(long j) throws ProxyCacheException {
        try {
            HttpURLConnection openConnection = openConnection(j, -1);
            this.connection = openConnection;
            String contentType = openConnection.getContentType();
            this.inputStream = new BufferedInputStream(this.connection.getInputStream(), 8192);
            HttpURLConnection httpURLConnection = this.connection;
            SourceInfo sourceInfo = new SourceInfo(this.sourceInfo.url, readSourceAvailableBytes(httpURLConnection, j, httpURLConnection.getResponseCode()), contentType);
            this.sourceInfo = sourceInfo;
            this.sourceInfoStorage.put(sourceInfo.url, this.sourceInfo);
        } catch (IOException e2) {
            throw new ProxyCacheException("Error opening connection for " + this.sourceInfo.url + " with offset " + j, e2);
        }
    }

    private long readSourceAvailableBytes(HttpURLConnection httpURLConnection, long j, int i) throws IOException {
        long contentLength = getContentLength(httpURLConnection);
        return i == 200 ? contentLength : i == 206 ? contentLength + j : this.sourceInfo.length;
    }

    private long getContentLength(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField("Content-Length");
        if (headerField == null) {
            return -1L;
        }
        return Long.parseLong(headerField);
    }

    @Override // com.danikula.videocache.Source
    public void close() throws ProxyCacheException {
        HttpURLConnection httpURLConnection = this.connection;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (ArrayIndexOutOfBoundsException e2) {
                LOG.error("Error closing connection correctly. Should happen only on Android L. If anybody know how to fix it, please visit https://github.com/danikula/AndroidVideoCache/issues/88. Until good solution is not know, just ignore this issue :(", (Throwable) e2);
            } catch (IllegalArgumentException e3) {
                e = e3;
                throw new RuntimeException("Wait... but why? WTF!? Really shouldn't happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues.", e);
            } catch (NullPointerException e4) {
                e = e4;
                throw new RuntimeException("Wait... but why? WTF!? Really shouldn't happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues.", e);
            }
        }
    }

    @Override // com.danikula.videocache.Source
    public int read(byte[] bArr) throws ProxyCacheException {
        InputStream inputStream = this.inputStream;
        if (inputStream == null) {
            throw new ProxyCacheException("Error reading data from " + this.sourceInfo.url + ": connection is absent!");
        }
        try {
            return inputStream.read(bArr, 0, bArr.length);
        } catch (InterruptedIOException e2) {
            throw new InterruptedProxyCacheException("Reading source " + this.sourceInfo.url + " is interrupted", e2);
        } catch (IOException e3) {
            throw new ProxyCacheException("Error reading data from " + this.sourceInfo.url, e3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void fetchContentInfo() throws com.danikula.videocache.ProxyCacheException {
        /*
            r10 = this;
            java.lang.String r0 = "Source info fetched: "
            java.lang.String r1 = "Error fetching info from "
            org.slf4j.Logger r2 = com.danikula.videocache.HttpUrlSource.LOG
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "Read content info from "
            r3.<init>(r4)
            com.danikula.videocache.SourceInfo r4 = r10.sourceInfo
            java.lang.String r4 = r4.url
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r3 = r3.toString()
            r2.debug(r3)
            r3 = 0
            r5 = 10000(0x2710, float:1.4013E-41)
            r6 = 0
            java.net.HttpURLConnection r3 = r10.openConnection(r3, r5)     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L64
            long r4 = r10.getContentLength(r3)     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L5f
            java.lang.String r7 = r3.getContentType()     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L5f
            java.io.InputStream r6 = r3.getInputStream()     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L5f
            com.danikula.videocache.SourceInfo r8 = new com.danikula.videocache.SourceInfo     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L5f
            com.danikula.videocache.SourceInfo r9 = r10.sourceInfo     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L5f
            java.lang.String r9 = r9.url     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L5f
            r8.<init>(r9, r4, r7)     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L5f
            r10.sourceInfo = r8     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L5f
            com.danikula.videocache.sourcestorage.SourceInfoStorage r4 = r10.sourceInfoStorage     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L5f
            java.lang.String r5 = r8.url     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L5f
            com.danikula.videocache.SourceInfo r7 = r10.sourceInfo     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L5f
            r4.put(r5, r7)     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L5f
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L5f
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L5f
            com.danikula.videocache.SourceInfo r0 = r10.sourceInfo     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L5f
            java.lang.StringBuilder r0 = r4.append(r0)     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L5f
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L5f
            r2.debug(r0)     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L5f
            com.danikula.videocache.ProxyCacheUtils.close(r6)
            if (r3 == 0) goto L84
            goto L81
        L5d:
            r0 = move-exception
            goto L85
        L5f:
            r0 = move-exception
            goto L66
        L61:
            r0 = move-exception
            r3 = r6
            goto L85
        L64:
            r0 = move-exception
            r3 = r6
        L66:
            org.slf4j.Logger r2 = com.danikula.videocache.HttpUrlSource.LOG     // Catch: java.lang.Throwable -> L5d
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5d
            r4.<init>(r1)     // Catch: java.lang.Throwable -> L5d
            com.danikula.videocache.SourceInfo r1 = r10.sourceInfo     // Catch: java.lang.Throwable -> L5d
            java.lang.String r1 = r1.url     // Catch: java.lang.Throwable -> L5d
            java.lang.StringBuilder r1 = r4.append(r1)     // Catch: java.lang.Throwable -> L5d
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L5d
            r2.error(r1, r0)     // Catch: java.lang.Throwable -> L5d
            com.danikula.videocache.ProxyCacheUtils.close(r6)
            if (r3 == 0) goto L84
        L81:
            r3.disconnect()
        L84:
            return
        L85:
            com.danikula.videocache.ProxyCacheUtils.close(r6)
            if (r3 == 0) goto L8d
            r3.disconnect()
        L8d:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.danikula.videocache.HttpUrlSource.fetchContentInfo():void");
    }

    private HttpURLConnection openConnection(long j, int i) throws IOException, ProxyCacheException {
        HttpURLConnection httpURLConnection;
        boolean z;
        String str = this.sourceInfo.url;
        int i2 = 0;
        do {
            int i3 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            LOG.debug("Open connection " + (i3 > 0 ? " with offset " + j : "") + " to " + str);
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            if (i3 > 0) {
                httpURLConnection.setRequestProperty("Range", "bytes=" + j + "-");
            }
            if (i > 0) {
                httpURLConnection.setConnectTimeout(i);
                httpURLConnection.setReadTimeout(i);
            }
            int responseCode = httpURLConnection.getResponseCode();
            z = responseCode == 301 || responseCode == 302 || responseCode == 303;
            if (z) {
                str = httpURLConnection.getHeaderField("Location");
                i2++;
                httpURLConnection.disconnect();
            }
            if (i2 > 5) {
                throw new ProxyCacheException("Too many redirects: " + i2);
            }
        } while (z);
        return httpURLConnection;
    }

    public synchronized String getMime() throws ProxyCacheException {
        if (TextUtils.isEmpty(this.sourceInfo.mime)) {
            fetchContentInfo();
        }
        return this.sourceInfo.mime;
    }

    public String getUrl() {
        return this.sourceInfo.url;
    }

    public String toString() {
        return "HttpUrlSource{sourceInfo='" + this.sourceInfo + "}";
    }
}
