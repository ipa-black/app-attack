.class public interface abstract Lorg/apache/mina/io/IoHandlerFilter$NextFilter;
.super Ljava/lang/Object;
.source "IoHandlerFilter.java"

# interfaces
.implements Lorg/apache/mina/io/IoHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/io/IoHandlerFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NextFilter"
.end annotation


# virtual methods
.method public abstract filterWrite(Lorg/apache/mina/io/IoSession;Lorg/apache/mina/common/ByteBuffer;Ljava/lang/Object;)V
.end method
