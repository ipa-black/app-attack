.class public Ljdbm/helper/IterationException;
.super Ljdbm/helper/WrappedRuntimeException;
.source "IterationException.java"


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Ljdbm/helper/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Ljdbm/helper/WrappedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Ljdbm/helper/WrappedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
