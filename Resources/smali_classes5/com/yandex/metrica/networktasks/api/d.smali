.class final enum Lcom/yandex/metrica/networktasks/api/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/yandex/metrica/networktasks/api/d;

.field public static final enum b:Lcom/yandex/metrica/networktasks/api/d;

.field public static final enum c:Lcom/yandex/metrica/networktasks/api/d;

.field public static final enum d:Lcom/yandex/metrica/networktasks/api/d;

.field public static final enum e:Lcom/yandex/metrica/networktasks/api/d;

.field public static final enum f:Lcom/yandex/metrica/networktasks/api/d;

.field public static final enum g:Lcom/yandex/metrica/networktasks/api/d;

.field public static final enum h:Lcom/yandex/metrica/networktasks/api/d;

.field public static final enum i:Lcom/yandex/metrica/networktasks/api/d;

.field private static final synthetic j:[Lcom/yandex/metrica/networktasks/api/d;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/yandex/metrica/networktasks/api/d;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/networktasks/api/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/networktasks/api/d;->a:Lcom/yandex/metrica/networktasks/api/d;

    new-instance v1, Lcom/yandex/metrica/networktasks/api/d;

    const-string v2, "PENDING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/networktasks/api/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/yandex/metrica/networktasks/api/d;->b:Lcom/yandex/metrica/networktasks/api/d;

    new-instance v2, Lcom/yandex/metrica/networktasks/api/d;

    const-string v3, "PREPARING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/networktasks/api/d;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/yandex/metrica/networktasks/api/d;->c:Lcom/yandex/metrica/networktasks/api/d;

    new-instance v3, Lcom/yandex/metrica/networktasks/api/d;

    const-string v4, "EXECUTING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/yandex/metrica/networktasks/api/d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/yandex/metrica/networktasks/api/d;->d:Lcom/yandex/metrica/networktasks/api/d;

    new-instance v4, Lcom/yandex/metrica/networktasks/api/d;

    const-string v5, "SUCCESS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/yandex/metrica/networktasks/api/d;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/yandex/metrica/networktasks/api/d;->e:Lcom/yandex/metrica/networktasks/api/d;

    new-instance v5, Lcom/yandex/metrica/networktasks/api/d;

    const-string v6, "FAILED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/yandex/metrica/networktasks/api/d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/yandex/metrica/networktasks/api/d;->f:Lcom/yandex/metrica/networktasks/api/d;

    new-instance v6, Lcom/yandex/metrica/networktasks/api/d;

    const-string v7, "SHOULD_NOT_EXECUTE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/yandex/metrica/networktasks/api/d;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/yandex/metrica/networktasks/api/d;->g:Lcom/yandex/metrica/networktasks/api/d;

    new-instance v7, Lcom/yandex/metrica/networktasks/api/d;

    const-string v8, "FINISHED"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/yandex/metrica/networktasks/api/d;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/yandex/metrica/networktasks/api/d;->h:Lcom/yandex/metrica/networktasks/api/d;

    new-instance v8, Lcom/yandex/metrica/networktasks/api/d;

    const-string v9, "REMOVED"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/yandex/metrica/networktasks/api/d;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/yandex/metrica/networktasks/api/d;->i:Lcom/yandex/metrica/networktasks/api/d;

    .line 1
    filled-new-array/range {v0 .. v8}, [Lcom/yandex/metrica/networktasks/api/d;

    move-result-object v0

    .line 2
    sput-object v0, Lcom/yandex/metrica/networktasks/api/d;->j:[Lcom/yandex/metrica/networktasks/api/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
