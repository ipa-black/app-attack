.class public Lorg/apache/mina/examples/tennis/TennisBall;
.super Ljava/lang/Object;
.source "TennisBall.java"


# instance fields
.field private final ping:Z

.field private final ttl:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 24
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/examples/tennis/TennisBall;-><init>(IZ)V

    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lorg/apache/mina/examples/tennis/TennisBall;->ttl:I

    .line 33
    iput-boolean p2, p0, Lorg/apache/mina/examples/tennis/TennisBall;->ping:Z

    return-void
.end method


# virtual methods
.method public getTTL()I
    .locals 1

    .line 41
    iget v0, p0, Lorg/apache/mina/examples/tennis/TennisBall;->ttl:I

    return v0
.end method

.method public stroke()Lorg/apache/mina/examples/tennis/TennisBall;
    .locals 3

    .line 50
    new-instance v0, Lorg/apache/mina/examples/tennis/TennisBall;

    iget v1, p0, Lorg/apache/mina/examples/tennis/TennisBall;->ttl:I

    add-int/lit8 v1, v1, -0x1

    iget-boolean v2, p0, Lorg/apache/mina/examples/tennis/TennisBall;->ping:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/examples/tennis/TennisBall;-><init>(IZ)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 59
    iget-boolean v0, p0, Lorg/apache/mina/examples/tennis/TennisBall;->ping:Z

    const-string v1, ")"

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "PING ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/mina/examples/tennis/TennisBall;->ttl:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "PONG ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/mina/examples/tennis/TennisBall;->ttl:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
