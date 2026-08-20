.class public final Ljdbm/recman/Provider;
.super Ljava/lang/Object;
.source "Provider.java"

# interfaces
.implements Ljdbm/RecordManagerProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRecordManager(Ljava/lang/String;Ljava/util/Properties;)Ljdbm/RecordManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    new-instance v0, Ljdbm/recman/BaseRecordManager;

    invoke-direct {v0, p1}, Ljdbm/recman/BaseRecordManager;-><init>(Ljava/lang/String;)V

    .line 91
    const-string p1, "jdbm.disableTransactions"

    const-string v1, "false"

    invoke-virtual {p2, p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 92
    const-string v1, "TRUE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    move-object p1, v0

    check-cast p1, Ljdbm/recman/BaseRecordManager;

    invoke-virtual {v0}, Ljdbm/recman/BaseRecordManager;->disableTransactions()V

    .line 96
    :cond_0
    const-string p1, "jdbm.cache.size"

    const-string v1, "1000"

    invoke-virtual {p2, p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 99
    const-string v1, "jdbm.cache.type"

    const-string v2, "normal"

    invoke-virtual {p2, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 101
    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    new-instance p2, Ljdbm/helper/MRU;

    invoke-direct {p2, p1}, Ljdbm/helper/MRU;-><init>(I)V

    .line 103
    new-instance p1, Ljdbm/recman/CacheRecordManager;

    invoke-direct {p1, v0, p2}, Ljdbm/recman/CacheRecordManager;-><init>(Ljdbm/RecordManager;Ljdbm/helper/CachePolicy;)V

    return-object p1

    .line 104
    :cond_1
    const-string p1, "soft"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 106
    const-string p1, "weak"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 107
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Weak reference cache not implemented"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Invalid cache type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Soft reference cache not implemented"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
