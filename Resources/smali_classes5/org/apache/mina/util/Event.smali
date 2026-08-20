.class Lorg/apache/mina/util/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field private final data:Ljava/lang/Object;

.field private final nextFilter:Ljava/lang/Object;

.field private final type:Lorg/apache/mina/util/EventType;


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/EventType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/mina/util/Event;->type:Lorg/apache/mina/util/EventType;

    .line 37
    iput-object p2, p0, Lorg/apache/mina/util/Event;->nextFilter:Ljava/lang/Object;

    .line 38
    iput-object p3, p0, Lorg/apache/mina/util/Event;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/apache/mina/util/Event;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getNextFilter()Ljava/lang/Object;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/apache/mina/util/Event;->nextFilter:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Lorg/apache/mina/util/EventType;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/mina/util/Event;->type:Lorg/apache/mina/util/EventType;

    return-object v0
.end method
