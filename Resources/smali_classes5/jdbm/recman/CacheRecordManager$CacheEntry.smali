.class Ljdbm/recman/CacheRecordManager$CacheEntry;
.super Ljava/lang/Object;
.source "CacheRecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdbm/recman/CacheRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheEntry"
.end annotation


# instance fields
.field _isDirty:Z

.field _obj:Ljava/lang/Object;

.field _recid:J

.field _serializer:Ljdbm/helper/Serializer;

.field private final synthetic this$0:Ljdbm/recman/CacheRecordManager;


# direct methods
.method constructor <init>(Ljdbm/recman/CacheRecordManager;JLjava/lang/Object;Ljdbm/helper/Serializer;Z)V
    .locals 0

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljdbm/recman/CacheRecordManager$CacheEntry;->this$0:Ljdbm/recman/CacheRecordManager;

    .line 427
    iput-wide p2, p0, Ljdbm/recman/CacheRecordManager$CacheEntry;->_recid:J

    .line 428
    iput-object p4, p0, Ljdbm/recman/CacheRecordManager$CacheEntry;->_obj:Ljava/lang/Object;

    .line 429
    iput-object p5, p0, Ljdbm/recman/CacheRecordManager$CacheEntry;->_serializer:Ljdbm/helper/Serializer;

    .line 430
    iput-boolean p6, p0, Ljdbm/recman/CacheRecordManager$CacheEntry;->_isDirty:Z

    return-void
.end method
