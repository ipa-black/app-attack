.class public Lorg/apache/mina/io/WriteTimeoutException;
.super Ljava/io/IOException;
.source "WriteTimeoutException.java"


# static fields
.field private static final serialVersionUID:J = 0x3638353037313431L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
