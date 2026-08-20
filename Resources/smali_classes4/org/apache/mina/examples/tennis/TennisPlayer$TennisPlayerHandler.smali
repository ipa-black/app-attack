.class Lorg/apache/mina/examples/tennis/TennisPlayer$TennisPlayerHandler;
.super Lorg/apache/mina/protocol/ProtocolHandlerAdapter;
.source "TennisPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/examples/tennis/TennisPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TennisPlayerHandler"
.end annotation


# static fields
.field private static nextId:I


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lorg/apache/mina/protocol/ProtocolHandlerAdapter;-><init>()V

    .line 37
    sget v0, Lorg/apache/mina/examples/tennis/TennisPlayer$TennisPlayerHandler;->nextId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/apache/mina/examples/tennis/TennisPlayer$TennisPlayerHandler;->nextId:I

    iput v0, p0, Lorg/apache/mina/examples/tennis/TennisPlayer$TennisPlayerHandler;->id:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/examples/tennis/TennisPlayer$1;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/apache/mina/examples/tennis/TennisPlayer$TennisPlayerHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public messageReceived(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 4

    .line 51
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Player-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/apache/mina/examples/tennis/TennisPlayer$TennisPlayerHandler;->id:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ": RCVD "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    check-cast p2, Lorg/apache/mina/examples/tennis/TennisBall;

    .line 56
    invoke-virtual {p2}, Lorg/apache/mina/examples/tennis/TennisBall;->stroke()Lorg/apache/mina/examples/tennis/TennisBall;

    move-result-object p2

    .line 58
    invoke-virtual {p2}, Lorg/apache/mina/examples/tennis/TennisBall;->getTTL()I

    move-result v0

    if-lez v0, :cond_0

    .line 61
    invoke-interface {p1, p2}, Lorg/apache/mina/protocol/ProtocolSession;->write(Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    :cond_0
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/mina/examples/tennis/TennisPlayer$TennisPlayerHandler;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": LOSE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    invoke-interface {p1}, Lorg/apache/mina/protocol/ProtocolSession;->close()V

    :goto_0
    return-void
.end method

.method public messageSent(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;)V
    .locals 2

    .line 73
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Player-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/mina/examples/tennis/TennisPlayer$TennisPlayerHandler;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": SENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 2

    .line 46
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Player-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/mina/examples/tennis/TennisPlayer$TennisPlayerHandler;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": QUIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/protocol/ProtocolSession;)V
    .locals 2

    .line 41
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Player-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/mina/examples/tennis/TennisPlayer$TennisPlayerHandler;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": READY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
