.class public Lorg/apache/mina/common/IdleStatus;
.super Ljava/lang/Object;
.source "IdleStatus.java"


# static fields
.field public static final BOTH_IDLE:Lorg/apache/mina/common/IdleStatus;

.field public static final READER_IDLE:Lorg/apache/mina/common/IdleStatus;

.field public static final WRITER_IDLE:Lorg/apache/mina/common/IdleStatus;


# instance fields
.field private final strValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lorg/apache/mina/common/IdleStatus;

    const-string v1, "reader idle"

    invoke-direct {v0, v1}, Lorg/apache/mina/common/IdleStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/common/IdleStatus;->READER_IDLE:Lorg/apache/mina/common/IdleStatus;

    .line 50
    new-instance v0, Lorg/apache/mina/common/IdleStatus;

    const-string v1, "writer idle"

    invoke-direct {v0, v1}, Lorg/apache/mina/common/IdleStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/common/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/common/IdleStatus;

    .line 55
    new-instance v0, Lorg/apache/mina/common/IdleStatus;

    const-string v1, "both idle"

    invoke-direct {v0, v1}, Lorg/apache/mina/common/IdleStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/common/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/common/IdleStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/apache/mina/common/IdleStatus;->strValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/mina/common/IdleStatus;->strValue:Ljava/lang/String;

    return-object v0
.end method
