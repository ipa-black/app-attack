.class public final Lorg/apache/commons/collections/DoubleOrderedMap;
.super Ljava/util/AbstractMap;
.source "DoubleOrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/DoubleOrderedMap$Node;,
        Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;
    }
.end annotation


# static fields
.field private static final FIRST_INDEX:I = 0x0

.field private static final KEY:I = 0x0

.field private static final NUMBER_OF_INDICES:I = 0x2

.field private static final SUM_OF_INDICES:I = 0x1

.field private static final VALUE:I = 0x1

.field private static final dataName:[Ljava/lang/String;


# instance fields
.field private collectionOfValues:[Ljava/util/Collection;

.field private modifications:I

.field private nodeCount:I

.field private rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

.field private setOfEntries:[Ljava/util/Set;

.field private setOfKeys:[Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 152
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/collections/DoubleOrderedMap;->dataName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 164
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x2

    .line 154
    new-array v1, v0, [Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iput-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    .line 155
    iput v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    .line 156
    iput v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->modifications:I

    .line 157
    new-array v1, v0, [Ljava/util/Set;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    iput-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfKeys:[Ljava/util/Set;

    .line 158
    new-array v1, v0, [Ljava/util/Set;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    iput-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfEntries:[Ljava/util/Set;

    .line 159
    new-array v0, v0, [Ljava/util/Collection;

    aput-object v3, v0, v2

    aput-object v3, v0, v4

    iput-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->collectionOfValues:[Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x2

    .line 154
    new-array v1, v0, [Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iput-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    .line 155
    iput v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    .line 156
    iput v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->modifications:I

    .line 157
    new-array v1, v0, [Ljava/util/Set;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    iput-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfKeys:[Ljava/util/Set;

    .line 158
    new-array v1, v0, [Ljava/util/Set;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    iput-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfEntries:[Ljava/util/Set;

    .line 159
    new-array v0, v0, [Ljava/util/Collection;

    aput-object v3, v0, v2

    aput-object v3, v0, v4

    iput-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->collectionOfValues:[Ljava/util/Collection;

    .line 187
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/collections/DoubleOrderedMap;Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lorg/apache/commons/collections/DoubleOrderedMap;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->modifications:I

    return p0
.end method

.method static synthetic access$2300(Lorg/apache/commons/collections/DoubleOrderedMap;)[Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 0

    .line 144
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->leastNode(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lorg/apache/commons/collections/DoubleOrderedMap;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->nextGreater(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/commons/collections/DoubleOrderedMap;Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackDelete(Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/commons/collections/DoubleOrderedMap;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    return p0
.end method

.method private static checkKey(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1209
    invoke-static {p0, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkNonNullComparable(Ljava/lang/Object;I)V

    return-void
.end method

.method private static checkKeyAndValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1236
    invoke-static {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkKey(Ljava/lang/Object;)V

    .line 1237
    invoke-static {p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static checkNonNullComparable(Ljava/lang/Object;I)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1194
    instance-of p0, p0, Ljava/lang/Comparable;

    if-eqz p0, :cond_0

    return-void

    .line 1195
    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lorg/apache/commons/collections/DoubleOrderedMap;->dataName:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, " must be Comparable"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1190
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lorg/apache/commons/collections/DoubleOrderedMap;->dataName:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, " cannot be null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkValue(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 1221
    invoke-static {p0, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkNonNullComparable(Ljava/lang/Object;I)V

    return-void
.end method

.method private static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0

    .line 534
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static copyColor(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    .line 616
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1000(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_0

    .line 618
    :cond_0
    invoke-static {p1, p0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1100(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 0

    .line 469
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkNonNullComparable(Ljava/lang/Object;I)V

    .line 471
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 473
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->oppositeIndex(I)I

    move-result p2

    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private doRedBlackDelete(Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 977
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->shrink()V

    return-void

    .line 918
    :cond_0
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 920
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->nextGreater(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->swapPosition(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 924
    :cond_1
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 929
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 931
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    if-nez v3, :cond_3

    .line 932
    iget-object v3, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object v1, v3, v0

    goto :goto_2

    .line 933
    :cond_3
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    if-ne p1, v3, :cond_4

    .line 935
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_2

    .line 937
    :cond_4
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 940
    :goto_2
    invoke-static {p1, v2, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 941
    invoke-static {p1, v2, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 942
    invoke-static {p1, v2, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 944
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 945
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackDeleteFixup(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_4

    .line 950
    :cond_5
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-nez v1, :cond_6

    .line 953
    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object v2, v1, v0

    goto :goto_4

    .line 957
    :cond_6
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 958
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackDeleteFixup(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 961
    :cond_7
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 962
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-ne p1, v1, :cond_8

    .line 965
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_3

    .line 967
    :cond_8
    invoke-static {p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 971
    :goto_3
    invoke-static {p1, v2, v0}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private doRedBlackDeleteFixup(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 2

    .line 995
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v0, v0, p2

    if-eq p1, v0, :cond_8

    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 996
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 997
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 1000
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1001
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1002
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1003
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1005
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 1008
    :cond_1
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1011
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1013
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    goto :goto_0

    .line 1015
    :cond_2
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1016
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1017
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1018
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1020
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 1024
    :cond_3
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->copyColor(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1026
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1027
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1028
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1030
    iget-object p1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object p1, p1, p2

    goto/16 :goto_0

    .line 1033
    :cond_4
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 1035
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1036
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1037
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1038
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1040
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 1043
    :cond_5
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1045
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1047
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    goto/16 :goto_0

    .line 1049
    :cond_6
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1050
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1051
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1052
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1054
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 1058
    :cond_7
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->copyColor(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1060
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1061
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1062
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1064
    iget-object p1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object p1, p1, p2

    goto/16 :goto_0

    .line 1069
    :cond_8
    :goto_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    return-void
.end method

.method private doRedBlackInsert(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 2

    .line 845
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_7

    .line 848
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v0, v0, p2

    if-eq p1, v0, :cond_7

    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 849
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 850
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 853
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 854
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 855
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 856
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 858
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    goto :goto_0

    .line 860
    :cond_2
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 861
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    .line 863
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 866
    :cond_3
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 867
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 869
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 870
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_0

    .line 877
    :cond_4
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 880
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 881
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 882
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 883
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 885
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    goto/16 :goto_0

    .line 887
    :cond_5
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->isLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 888
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    .line 890
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 893
    :cond_6
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 894
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 896
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 897
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->rotateLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto/16 :goto_0

    .line 903
    :cond_7
    :goto_1
    iget-object p1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object p1, p1, p2

    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    return-void
.end method

.method private doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 0

    .line 445
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 449
    invoke-direct {p0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->oppositeIndex(I)I

    move-result p2

    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object p2

    .line 451
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackDelete(Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method private static getGrandParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 0

    .line 685
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p0

    return-object p0
.end method

.method private static getLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 725
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getParent(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 697
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 711
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private grow()V
    .locals 1

    .line 1254
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->modify()V

    .line 1256
    iget v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    return-void
.end method

.method private insertValue(Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1280
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 1283
    :goto_0
    invoke-static {p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v2

    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/collections/DoubleOrderedMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v2

    if-eqz v2, :cond_3

    if-gez v2, :cond_1

    .line 1290
    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1291
    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_0

    .line 1293
    :cond_0
    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1294
    invoke-static {p1, v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1295
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackInsert(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_1

    .line 1300
    :cond_1
    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1301
    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_0

    .line 1303
    :cond_2
    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1304
    invoke-static {p1, v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1305
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackInsert(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    :goto_1
    return-void

    .line 1286
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Cannot store a duplicate value (\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "\") in this Map"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 646
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1300(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static isLeftChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    .line 743
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    if-ne p0, p1, :cond_1

    :goto_0
    return v0
.end method

.method private static isRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 632
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static isRightChild(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    .line 763
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    if-ne p0, p1, :cond_1

    :goto_0
    return v0
.end method

.method private static leastNode(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 1

    if-eqz p0, :cond_1

    .line 552
    :goto_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 553
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p0

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method private lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 2

    .line 505
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v0, v0, p2

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 508
    :cond_0
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    return-object v0

    :cond_1
    if-gez v1, :cond_2

    .line 515
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_0
.end method

.method private static makeBlack(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 673
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1000(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    :cond_0
    return-void
.end method

.method private static makeRed(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 660
    invoke-static {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1400(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    :cond_0
    return-void
.end method

.method private modify()V
    .locals 1

    .line 1246
    iget v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->modifications:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->modifications:I

    return-void
.end method

.method private nextGreater(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 574
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 578
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->leastNode(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    goto :goto_1

    .line 587
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    :goto_0
    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    if-eqz p1, :cond_3

    .line 590
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 592
    :cond_2
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_0

    :cond_3
    :goto_1
    return-object p1
.end method

.method private oppositeIndex(I)I
    .locals 0

    rsub-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private rotateLeft(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 2

    .line 778
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 780
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 782
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 783
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 786
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 788
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-nez v1, :cond_1

    .line 791
    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object v0, v1, p2

    goto :goto_0

    .line 792
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 793
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_0

    .line 795
    :cond_2
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 798
    :goto_0
    invoke-static {v0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 799
    invoke-static {p1, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    return-void
.end method

.method private rotateRight(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 2

    .line 810
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 812
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 814
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 815
    invoke-static {v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 818
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 820
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-nez v1, :cond_1

    .line 823
    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object v0, v1, p2

    goto :goto_0

    .line 824
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 825
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_0

    .line 827
    :cond_2
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 830
    :goto_0
    invoke-static {v0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 831
    invoke-static {p1, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    return-void
.end method

.method private shrink()V
    .locals 1

    .line 1264
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->modify()V

    .line 1266
    iget v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    return-void
.end method

.method private swapPosition(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V
    .locals 10

    .line 1084
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    .line 1085
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 1086
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    .line 1087
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    .line 1088
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v4

    .line 1089
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v5

    .line 1090
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v6

    invoke-static {v6, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v6

    if-ne p1, v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    .line 1093
    :goto_0
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$900(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v9

    invoke-static {v9, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v9

    if-ne p2, v9, :cond_1

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_1
    if-ne p1, v3, :cond_3

    .line 1099
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    if-eqz v7, :cond_2

    .line 1102
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1103
    invoke-static {p2, v2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_3

    .line 1105
    :cond_2
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1106
    invoke-static {p2, v1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_3

    .line 1109
    :cond_3
    invoke-static {p1, v3, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    if-eqz v3, :cond_5

    if-eqz v7, :cond_4

    .line 1113
    invoke-static {v3, p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_2

    .line 1115
    :cond_4
    invoke-static {v3, p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1119
    :cond_5
    :goto_2
    invoke-static {p2, v1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1120
    invoke-static {p2, v2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    :goto_3
    if-ne p2, v0, :cond_7

    .line 1124
    invoke-static {p2, p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    if-eqz v6, :cond_6

    .line 1127
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1128
    invoke-static {p1, v5, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_5

    .line 1130
    :cond_6
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1131
    invoke-static {p1, v4, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_5

    .line 1134
    :cond_7
    invoke-static {p2, v0, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    if-eqz v0, :cond_9

    if-eqz v6, :cond_8

    .line 1138
    invoke-static {v0, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    goto :goto_4

    .line 1140
    :cond_8
    invoke-static {v0, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1144
    :cond_9
    :goto_4
    invoke-static {p1, v4, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1145
    invoke-static {p1, v5, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1149
    :goto_5
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1150
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1153
    :cond_a
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1154
    invoke-static {p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1157
    :cond_b
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1158
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1161
    :cond_c
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1162
    invoke-static {p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1165
    :cond_d
    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1168
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aget-object v1, v0, p3

    if-ne v1, p1, :cond_e

    .line 1169
    aput-object p2, v0, p3

    goto :goto_6

    :cond_e
    if-ne v1, p2, :cond_f

    .line 1171
    aput-object p1, v0, p3

    :cond_f
    :goto_6
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 1478
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->modify()V

    const/4 v0, 0x0

    .line 1480
    iput v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    .line 1481
    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    const/4 v0, 0x1

    .line 1482
    aput-object v2, v1, v0

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1342
    invoke-static {p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkKey(Ljava/lang/Object;)V

    .line 1344
    check-cast p1, Ljava/lang/Comparable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 1358
    invoke-static {p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkValue(Ljava/lang/Object;)V

    .line 1360
    check-cast p1, Ljava/lang/Comparable;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->lookup(Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3

    .line 1624
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfEntries:[Ljava/util/Set;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 1625
    new-instance v2, Lorg/apache/commons/collections/DoubleOrderedMap$11;

    invoke-direct {v2, p0}, Lorg/apache/commons/collections/DoubleOrderedMap$11;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V

    aput-object v2, v0, v1

    .line 1682
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfEntries:[Ljava/util/Set;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public entrySetByValue()Ljava/util/Set;
    .locals 3

    .line 241
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfEntries:[Ljava/util/Set;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 242
    new-instance v2, Lorg/apache/commons/collections/DoubleOrderedMap$1;

    invoke-direct {v2, p0}, Lorg/apache/commons/collections/DoubleOrderedMap$1;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V

    aput-object v2, v0, v1

    .line 298
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfEntries:[Ljava/util/Set;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1378
    check-cast p1, Ljava/lang/Comparable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getKeyForValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 205
    check-cast p1, Ljava/lang/Comparable;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 3

    .line 1499
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfKeys:[Ljava/util/Set;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 1500
    new-instance v2, Lorg/apache/commons/collections/DoubleOrderedMap$7;

    invoke-direct {v2, p0}, Lorg/apache/commons/collections/DoubleOrderedMap$7;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V

    aput-object v2, v0, v1

    .line 1535
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfKeys:[Ljava/util/Set;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public keySetByValue()Ljava/util/Set;
    .locals 3

    .line 321
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfKeys:[Ljava/util/Set;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 322
    new-instance v2, Lorg/apache/commons/collections/DoubleOrderedMap$3;

    invoke-direct {v2, p0}, Lorg/apache/commons/collections/DoubleOrderedMap$3;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V

    aput-object v2, v0, v1

    .line 357
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->setOfKeys:[Ljava/util/Set;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1405
    invoke-static {p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap;->checkKeyAndValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1407
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 1410
    new-instance v0, Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1412
    iget-object p1, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->rootNode:[Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    aput-object v0, p1, v1

    const/4 p2, 0x1

    .line 1413
    aput-object v0, p1, p2

    .line 1415
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->grow()V

    goto :goto_1

    .line 1418
    :cond_0
    :goto_0
    move-object v2, p1

    check-cast v2, Ljava/lang/Comparable;

    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/collections/DoubleOrderedMap;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v3

    if-eqz v3, :cond_4

    if-gez v3, :cond_2

    .line 1425
    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1426
    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_0

    .line 1428
    :cond_1
    new-instance p1, Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    check-cast p2, Ljava/lang/Comparable;

    invoke-direct {p1, v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1431
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->insertValue(Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V

    .line 1432
    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1700(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1433
    invoke-static {p1, v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1434
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackInsert(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1435
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->grow()V

    goto :goto_1

    .line 1440
    :cond_2
    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1441
    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$800(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v0

    goto :goto_0

    .line 1443
    :cond_3
    new-instance p1, Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    check-cast p2, Ljava/lang/Comparable;

    invoke-direct {p1, v2, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1446
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->insertValue(Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V

    .line 1447
    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1500(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1448
    invoke-static {p1, v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$1600(Lorg/apache/commons/collections/DoubleOrderedMap$Node;Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1449
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRedBlackInsert(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)V

    .line 1450
    invoke-direct {p0}, Lorg/apache/commons/collections/DoubleOrderedMap;->grow()V

    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 1421
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Cannot store a duplicate key (\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\") in this Map"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1470
    check-cast p1, Ljava/lang/Comparable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 217
    check-cast p1, Ljava/lang/Comparable;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1323
    iget v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->nodeCount:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3

    .line 1553
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->collectionOfValues:[Ljava/util/Collection;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 1554
    new-instance v2, Lorg/apache/commons/collections/DoubleOrderedMap$9;

    invoke-direct {v2, p0}, Lorg/apache/commons/collections/DoubleOrderedMap$9;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V

    aput-object v2, v0, v1

    .line 1603
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->collectionOfValues:[Ljava/util/Collection;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public valuesByValue()Ljava/util/Collection;
    .locals 3

    .line 380
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->collectionOfValues:[Ljava/util/Collection;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 381
    new-instance v2, Lorg/apache/commons/collections/DoubleOrderedMap$5;

    invoke-direct {v2, p0}, Lorg/apache/commons/collections/DoubleOrderedMap$5;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V

    aput-object v2, v0, v1

    .line 430
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap;->collectionOfValues:[Ljava/util/Collection;

    aget-object v0, v0, v1

    return-object v0
.end method
