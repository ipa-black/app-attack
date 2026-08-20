.class Lorg/apache/commons/collections/map/ReferenceMap$ValueIterator;
.super Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;
.source "ReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/ReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueIterator"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/map/ReferenceMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/map/ReferenceMap;)V
    .locals 0

    .line 959
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;-><init>(Lorg/apache/commons/collections/map/ReferenceMap;)V

    iput-object p1, p0, Lorg/apache/commons/collections/map/ReferenceMap$ValueIterator;->this$0:Lorg/apache/commons/collections/map/ReferenceMap;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections/map/ReferenceMap;Lorg/apache/commons/collections/map/ReferenceMap$1;)V
    .locals 0

    .line 959
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/ReferenceMap$ValueIterator;-><init>(Lorg/apache/commons/collections/map/ReferenceMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .line 961
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ReferenceMap$EntryIterator;->nextEntry()Lorg/apache/commons/collections/map/ReferenceMap$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
