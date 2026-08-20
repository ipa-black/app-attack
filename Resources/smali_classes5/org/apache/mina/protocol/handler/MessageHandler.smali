.class public interface abstract Lorg/apache/mina/protocol/handler/MessageHandler;
.super Ljava/lang/Object;
.source "MessageHandler.java"


# static fields
.field public static final NOOP:Lorg/apache/mina/protocol/handler/MessageHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lorg/apache/mina/protocol/handler/MessageHandler$1;

    invoke-direct {v0}, Lorg/apache/mina/protocol/handler/MessageHandler$1;-><init>()V

    sput-object v0, Lorg/apache/mina/protocol/handler/MessageHandler;->NOOP:Lorg/apache/mina/protocol/handler/MessageHandler;

    return-void
.end method


# virtual methods
.method public abstract messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
.end method
