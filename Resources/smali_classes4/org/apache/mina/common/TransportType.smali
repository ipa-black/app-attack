.class public final Lorg/apache/mina/common/TransportType;
.super Ljava/lang/Object;
.source "TransportType.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DATAGRAM:Lorg/apache/mina/common/TransportType;

.field public static final SOCKET:Lorg/apache/mina/common/TransportType;

.field public static final VM_PIPE:Lorg/apache/mina/common/TransportType;

.field private static final name2type:Ljava/util/Map;

.field private static final serialVersionUID:J = 0x2d37363837313537L


# instance fields
.field private final names:[Ljava/lang/String;

.field private final transient stateless:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/mina/common/TransportType;->name2type:Ljava/util/Map;

    .line 74
    new-instance v0, Lorg/apache/mina/common/TransportType;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "SOCKET"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "TCP"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-direct {v0, v2, v4}, Lorg/apache/mina/common/TransportType;-><init>([Ljava/lang/String;Z)V

    sput-object v0, Lorg/apache/mina/common/TransportType;->SOCKET:Lorg/apache/mina/common/TransportType;

    .line 80
    new-instance v0, Lorg/apache/mina/common/TransportType;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DATAGRAM"

    aput-object v2, v1, v4

    const-string v2, "UDP"

    aput-object v2, v1, v5

    invoke-direct {v0, v1, v5}, Lorg/apache/mina/common/TransportType;-><init>([Ljava/lang/String;Z)V

    sput-object v0, Lorg/apache/mina/common/TransportType;->DATAGRAM:Lorg/apache/mina/common/TransportType;

    .line 89
    new-instance v0, Lorg/apache/mina/common/TransportType;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "VM_PIPE"

    aput-object v2, v1, v4

    invoke-direct {v0, v1, v4}, Lorg/apache/mina/common/TransportType;-><init>([Ljava/lang/String;Z)V

    sput-object v0, Lorg/apache/mina/common/TransportType;->VM_PIPE:Lorg/apache/mina/common/TransportType;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    .line 131
    array-length v0, p1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 136
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 138
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v1, "strVals["

    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_1
    invoke-static {p1, p0}, Lorg/apache/mina/common/TransportType;->register([Ljava/lang/String;Lorg/apache/mina/common/TransportType;)V

    .line 147
    iput-object p1, p0, Lorg/apache/mina/common/TransportType;->names:[Ljava/lang/String;

    .line 148
    iput-boolean p2, p0, Lorg/apache/mina/common/TransportType;->stateless:Z

    return-void

    .line 133
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "names is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "names"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/mina/common/TransportType;
    .locals 3

    .line 103
    sget-object v0, Lorg/apache/mina/common/TransportType;->name2type:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/common/TransportType;

    if-eqz v0, :cond_0

    return-object v0

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unknown transport type name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/apache/mina/common/TransportType;->names:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 185
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/common/TransportType;->names:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/apache/mina/common/TransportType;->getInstance(Ljava/lang/String;)Lorg/apache/mina/common/TransportType;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 193
    :cond_0
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Unknown transport type."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static register([Ljava/lang/String;Lorg/apache/mina/common/TransportType;)V
    .locals 4

    .line 53
    sget-object v0, Lorg/apache/mina/common/TransportType;->name2type:Ljava/util/Map;

    monitor-enter v0

    .line 55
    :try_start_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 57
    sget-object v2, Lorg/apache/mina/common/TransportType;->name2type:Ljava/util/Map;

    aget-object v3, p0, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Transport type name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object p0, p0, v1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v1, "\' is already taken."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_1
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 66
    sget-object v2, Lorg/apache/mina/common/TransportType;->name2type:Ljava/util/Map;

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 68
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getNames()Ljava/util/Set;
    .locals 3

    .line 165
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 166
    iget-object v1, p0, Lorg/apache/mina/common/TransportType;->names:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 168
    iget-object v2, p0, Lorg/apache/mina/common/TransportType;->names:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isStateless()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lorg/apache/mina/common/TransportType;->stateless:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 176
    iget-object v0, p0, Lorg/apache/mina/common/TransportType;->names:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method
