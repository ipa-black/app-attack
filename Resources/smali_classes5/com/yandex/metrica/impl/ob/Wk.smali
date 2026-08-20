.class final enum Lcom/yandex/metrica/impl/ob/Wk;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/Wk;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/ob/Wk;

.field public static final enum b:Lcom/yandex/metrica/impl/ob/Wk;

.field public static final enum c:Lcom/yandex/metrica/impl/ob/Wk;

.field public static final enum d:Lcom/yandex/metrica/impl/ob/Wk;

.field public static final enum e:Lcom/yandex/metrica/impl/ob/Wk;

.field public static final enum f:Lcom/yandex/metrica/impl/ob/Wk;

.field private static final synthetic g:[Lcom/yandex/metrica/impl/ob/Wk;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Wk;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Wk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/Wk;->a:Lcom/yandex/metrica/impl/ob/Wk;

    .line 2
    new-instance v1, Lcom/yandex/metrica/impl/ob/Wk;

    const-string v2, "NULL_UI_ACCESS_CONFIG"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/Wk;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/yandex/metrica/impl/ob/Wk;->b:Lcom/yandex/metrica/impl/ob/Wk;

    .line 3
    new-instance v2, Lcom/yandex/metrica/impl/ob/Wk;

    const-string v3, "NULL_UI_PARSING_CONFIG"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/Wk;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/yandex/metrica/impl/ob/Wk;->c:Lcom/yandex/metrica/impl/ob/Wk;

    .line 4
    new-instance v3, Lcom/yandex/metrica/impl/ob/Wk;

    const-string v4, "UI_PARING_FEATURE_DISABLED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/yandex/metrica/impl/ob/Wk;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/yandex/metrica/impl/ob/Wk;->d:Lcom/yandex/metrica/impl/ob/Wk;

    .line 5
    new-instance v4, Lcom/yandex/metrica/impl/ob/Wk;

    const-string v5, "FORBIDDEN_FOR_APP"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/yandex/metrica/impl/ob/Wk;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/yandex/metrica/impl/ob/Wk;->e:Lcom/yandex/metrica/impl/ob/Wk;

    .line 6
    new-instance v5, Lcom/yandex/metrica/impl/ob/Wk;

    const-string v6, "FORBIDDEN_FOR_ACTIVITY"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/yandex/metrica/impl/ob/Wk;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/yandex/metrica/impl/ob/Wk;->f:Lcom/yandex/metrica/impl/ob/Wk;

    .line 7
    filled-new-array/range {v0 .. v5}, [Lcom/yandex/metrica/impl/ob/Wk;

    move-result-object v0

    .line 8
    sput-object v0, Lcom/yandex/metrica/impl/ob/Wk;->g:[Lcom/yandex/metrica/impl/ob/Wk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Wk;
    .locals 1

    .line 1
    const-class v0, Lcom/yandex/metrica/impl/ob/Wk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/Wk;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/Wk;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/Wk;->g:[Lcom/yandex/metrica/impl/ob/Wk;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/Wk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/Wk;

    return-object v0
.end method
