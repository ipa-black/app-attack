.class public abstract Lcom/pgl/ssdk/c;
.super Ljava/lang/Object;
.source "ApkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pgl/ssdk/c$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/pgl/ssdk/n;)Lcom/pgl/ssdk/c$a;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pgl/ssdk/o;
        }
    .end annotation

    .line 3
    invoke-static/range {p0 .. p0}, Lcom/pgl/ssdk/m;->a(Lcom/pgl/ssdk/n;)Lcom/pgl/ssdk/l;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/pgl/ssdk/l;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v0}, Lcom/pgl/ssdk/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 10
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 11
    invoke-static {v10}, Lcom/pgl/ssdk/m;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    cmp-long v0, v3, v8

    if-gtz v0, :cond_1

    .line 18
    invoke-static {v10}, Lcom/pgl/ssdk/m;->c(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    add-long v0, v3, v5

    cmp-long v2, v0, v8

    if-gtz v2, :cond_0

    .line 27
    invoke-static {v10}, Lcom/pgl/ssdk/m;->d(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 29
    new-instance v0, Lcom/pgl/ssdk/p;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/pgl/ssdk/p;-><init>(JJIJLjava/nio/ByteBuffer;)V

    .line 30
    new-instance v1, Lcom/pgl/ssdk/c$a;

    .line 31
    invoke-virtual {v0}, Lcom/pgl/ssdk/p;->a()J

    move-result-wide v12

    .line 32
    invoke-virtual {v0}, Lcom/pgl/ssdk/p;->c()J

    move-result-wide v14

    .line 33
    invoke-virtual {v0}, Lcom/pgl/ssdk/p;->b()I

    move-result v16

    .line 34
    invoke-virtual {v0}, Lcom/pgl/ssdk/p;->e()J

    move-result-wide v17

    .line 35
    invoke-virtual {v0}, Lcom/pgl/ssdk/p;->d()Ljava/nio/ByteBuffer;

    move-result-object v19

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Lcom/pgl/ssdk/c$a;-><init>(JJIJLjava/nio/ByteBuffer;)V

    return-object v1

    .line 36
    :cond_0
    new-instance v2, Lcom/pgl/ssdk/o;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ZIP Central Directory overlaps with End of Central Directory. CD end: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", EoCD start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/pgl/ssdk/o;-><init>(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_1
    new-instance v0, Lcom/pgl/ssdk/o;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ZIP Central Directory start offset out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". ZIP End of Central Directory offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pgl/ssdk/o;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_2
    new-instance v0, Lcom/pgl/ssdk/o;

    const-string v1, "ZIP End of Central Directory record not found"

    invoke-direct {v0, v1}, Lcom/pgl/ssdk/o;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/pgl/ssdk/n;Lcom/pgl/ssdk/p;)Lcom/pgl/ssdk/d;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pgl/ssdk/b;
        }
    .end annotation

    .line 39
    invoke-virtual {p1}, Lcom/pgl/ssdk/p;->a()J

    move-result-wide v0

    .line 41
    invoke-virtual {p1}, Lcom/pgl/ssdk/p;->c()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 42
    invoke-virtual {p1}, Lcom/pgl/ssdk/p;->e()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_5

    const-wide/16 v2, 0x20

    cmp-long p1, v0, v2

    if-ltz p1, :cond_4

    const-wide/16 v2, 0x18

    sub-long v2, v0, v2

    .line 58
    check-cast p0, Lcom/pgl/ssdk/k;

    const/16 p1, 0x18

    invoke-virtual {p0, v2, v3, p1}, Lcom/pgl/ssdk/k;->a(JI)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 59
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    .line 60
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v3

    const-wide v5, 0x20676953204b5041L

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    const/16 v3, 0x10

    .line 61
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v3

    const-wide v5, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    const/4 v3, 0x0

    .line 66
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-ltz p1, :cond_2

    const-wide/32 v6, 0x7ffffff7

    cmp-long p1, v4, v6

    if-gtz p1, :cond_2

    const-wide/16 v6, 0x8

    add-long/2addr v6, v4

    long-to-int p1, v6

    int-to-long v6, p1

    sub-long/2addr v0, v6

    const-wide/16 v8, 0x0

    cmp-long p1, v0, v8

    if-ltz p1, :cond_1

    .line 78
    invoke-virtual {p0, v0, v1, v2}, Lcom/pgl/ssdk/k;->a(JI)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 79
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    .line 86
    new-instance p1, Lcom/pgl/ssdk/d;

    invoke-virtual {p0, v0, v1, v6, v7}, Lcom/pgl/ssdk/k;->a(JJ)Lcom/pgl/ssdk/n;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/pgl/ssdk/d;-><init>(JLcom/pgl/ssdk/n;)V

    return-object p1

    .line 87
    :cond_0
    new-instance p0, Lcom/pgl/ssdk/b;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "APK Signing Block sizes in header and footer do not match: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " vs "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pgl/ssdk/b;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_1
    new-instance p0, Lcom/pgl/ssdk/b;

    const-string p1, "APK Signing Block offset out of range: "

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pgl/ssdk/b;-><init>(Ljava/lang/String;)V

    throw p0

    .line 89
    :cond_2
    new-instance p0, Lcom/pgl/ssdk/b;

    const-string p1, "APK Signing Block size out of range: "

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pgl/ssdk/b;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_3
    new-instance p0, Lcom/pgl/ssdk/b;

    const-string p1, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {p0, p1}, Lcom/pgl/ssdk/b;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_4
    new-instance p0, Lcom/pgl/ssdk/b;

    const-string p1, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pgl/ssdk/b;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_5
    new-instance p0, Lcom/pgl/ssdk/b;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ZIP Central Directory is not immediately followed by End of Central Directory. CD end: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", EoCD start: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pgl/ssdk/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 93
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/pgl/ssdk/M;->a()Lcom/pgl/ssdk/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pgl/ssdk/M;->c()Lcom/pgl/ssdk/Q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static a(Ljava/util/zip/ZipFile;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 94
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
