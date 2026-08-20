.class public abstract Lorg/apache/mina/io/IoSessionManagerFilterChain;
.super Lorg/apache/mina/io/AbstractIoFilterChain;
.source "IoSessionManagerFilterChain.java"


# instance fields
.field private final manager:Lorg/apache/mina/io/IoSessionManager;


# direct methods
.method protected constructor <init>(Lorg/apache/mina/io/IoSessionManager;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/apache/mina/io/AbstractIoFilterChain;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/mina/io/IoSessionManagerFilterChain;->manager:Lorg/apache/mina/io/IoSessionManager;

    return-void
.end method


# virtual methods
.method protected createTailFilter()Lorg/apache/mina/io/IoFilter;
    .locals 1

    .line 51
    new-instance v0, Lorg/apache/mina/io/IoSessionManagerFilterChain$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/io/IoSessionManagerFilterChain$1;-><init>(Lorg/apache/mina/io/IoSessionManagerFilterChain;)V

    return-object v0
.end method

.method public getManager()Lorg/apache/mina/io/IoSessionManager;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/apache/mina/io/IoSessionManagerFilterChain;->manager:Lorg/apache/mina/io/IoSessionManager;

    return-object v0
.end method
