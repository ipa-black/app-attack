.class public Lorg/apache/mina/util/EventType;
.super Ljava/lang/Object;
.source "EventType.java"


# static fields
.field public static final CLOSED:Lorg/apache/mina/util/EventType;

.field public static final EXCEPTION:Lorg/apache/mina/util/EventType;

.field public static final IDLE:Lorg/apache/mina/util/EventType;

.field public static final OPENED:Lorg/apache/mina/util/EventType;

.field public static final READ:Lorg/apache/mina/util/EventType;

.field public static final RECEIVED:Lorg/apache/mina/util/EventType;

.field public static final SENT:Lorg/apache/mina/util/EventType;

.field public static final WRITTEN:Lorg/apache/mina/util/EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/apache/mina/util/EventType;

    invoke-direct {v0}, Lorg/apache/mina/util/EventType;-><init>()V

    sput-object v0, Lorg/apache/mina/util/EventType;->OPENED:Lorg/apache/mina/util/EventType;

    .line 33
    new-instance v0, Lorg/apache/mina/util/EventType;

    invoke-direct {v0}, Lorg/apache/mina/util/EventType;-><init>()V

    sput-object v0, Lorg/apache/mina/util/EventType;->CLOSED:Lorg/apache/mina/util/EventType;

    .line 35
    new-instance v0, Lorg/apache/mina/util/EventType;

    invoke-direct {v0}, Lorg/apache/mina/util/EventType;-><init>()V

    sput-object v0, Lorg/apache/mina/util/EventType;->READ:Lorg/apache/mina/util/EventType;

    .line 37
    new-instance v0, Lorg/apache/mina/util/EventType;

    invoke-direct {v0}, Lorg/apache/mina/util/EventType;-><init>()V

    sput-object v0, Lorg/apache/mina/util/EventType;->WRITTEN:Lorg/apache/mina/util/EventType;

    .line 39
    new-instance v0, Lorg/apache/mina/util/EventType;

    invoke-direct {v0}, Lorg/apache/mina/util/EventType;-><init>()V

    sput-object v0, Lorg/apache/mina/util/EventType;->RECEIVED:Lorg/apache/mina/util/EventType;

    .line 41
    new-instance v0, Lorg/apache/mina/util/EventType;

    invoke-direct {v0}, Lorg/apache/mina/util/EventType;-><init>()V

    sput-object v0, Lorg/apache/mina/util/EventType;->SENT:Lorg/apache/mina/util/EventType;

    .line 43
    new-instance v0, Lorg/apache/mina/util/EventType;

    invoke-direct {v0}, Lorg/apache/mina/util/EventType;-><init>()V

    sput-object v0, Lorg/apache/mina/util/EventType;->IDLE:Lorg/apache/mina/util/EventType;

    .line 45
    new-instance v0, Lorg/apache/mina/util/EventType;

    invoke-direct {v0}, Lorg/apache/mina/util/EventType;-><init>()V

    sput-object v0, Lorg/apache/mina/util/EventType;->EXCEPTION:Lorg/apache/mina/util/EventType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
