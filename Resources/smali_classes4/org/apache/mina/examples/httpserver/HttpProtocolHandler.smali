.class public Lorg/apache/mina/examples/httpserver/HttpProtocolHandler;
.super Lorg/apache/mina/io/handler/StreamIoHandler;
.source "HttpProtocolHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/examples/httpserver/HttpProtocolHandler$Worker;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/apache/mina/io/handler/StreamIoHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected processStreamIo(Lorg/apache/mina/io/IoSession;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 51
    new-instance p1, Lorg/apache/mina/examples/httpserver/HttpProtocolHandler$Worker;

    invoke-direct {p1, p2, p3}, Lorg/apache/mina/examples/httpserver/HttpProtocolHandler$Worker;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Lorg/apache/mina/examples/httpserver/HttpProtocolHandler$Worker;->start()V

    return-void
.end method
