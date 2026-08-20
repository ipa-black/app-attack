.class public Lorg/apache/mina/util/ExceptionUtil;
.super Ljava/lang/Object;
.source "ExceptionUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static throwException(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    instance-of v0, p0, Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 37
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_1

    .line 41
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 43
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 39
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 35
    :cond_2
    check-cast p0, Ljava/io/IOException;

    throw p0
.end method
