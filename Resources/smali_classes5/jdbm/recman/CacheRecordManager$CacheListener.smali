.class Ljdbm/recman/CacheRecordManager$CacheListener;
.super Ljava/lang/Object;
.source "CacheRecordManager.java"

# interfaces
.implements Ljdbm/helper/CachePolicyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdbm/recman/CacheRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheListener"
.end annotation


# instance fields
.field private final synthetic this$0:Ljdbm/recman/CacheRecordManager;


# direct methods
.method private constructor <init>(Ljdbm/recman/CacheRecordManager;)V
    .locals 0

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljdbm/recman/CacheRecordManager$CacheListener;->this$0:Ljdbm/recman/CacheRecordManager;

    return-void
.end method

.method synthetic constructor <init>(Ljdbm/recman/CacheRecordManager;Ljdbm/recman/CacheRecordManager$1;)V
    .locals 0

    .line 435
    invoke-direct {p0, p1}, Ljdbm/recman/CacheRecordManager$CacheListener;-><init>(Ljdbm/recman/CacheRecordManager;)V

    return-void
.end method


# virtual methods
.method public cacheObjectEvicted(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljdbm/helper/CacheEvictionException;
        }
    .end annotation

    .line 447
    check-cast p1, Ljdbm/recman/CacheRecordManager$CacheEntry;

    .line 448
    iget-boolean v0, p1, Ljdbm/recman/CacheRecordManager$CacheEntry;->_isDirty:Z

    if-eqz v0, :cond_0

    .line 450
    :try_start_0
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager$CacheListener;->this$0:Ljdbm/recman/CacheRecordManager;

    iget-object v0, v0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    iget-wide v1, p1, Ljdbm/recman/CacheRecordManager$CacheEntry;->_recid:J

    iget-object v3, p1, Ljdbm/recman/CacheRecordManager$CacheEntry;->_obj:Ljava/lang/Object;

    iget-object p1, p1, Ljdbm/recman/CacheRecordManager$CacheEntry;->_serializer:Ljdbm/helper/Serializer;

    invoke-interface {v0, v1, v2, v3, p1}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 452
    new-instance v0, Ljdbm/helper/CacheEvictionException;

    invoke-direct {v0, p1}, Ljdbm/helper/CacheEvictionException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
