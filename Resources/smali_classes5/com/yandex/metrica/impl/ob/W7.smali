.class public final enum Lcom/yandex/metrica/impl/ob/W7;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/W7;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/ob/W7;

.field public static final enum b:Lcom/yandex/metrica/impl/ob/W7;

.field public static final enum c:Lcom/yandex/metrica/impl/ob/W7;

.field private static final synthetic d:[Lcom/yandex/metrica/impl/ob/W7;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/W7;

    const-string v1, "CLIENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/W7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/W7;->a:Lcom/yandex/metrica/impl/ob/W7;

    new-instance v1, Lcom/yandex/metrica/impl/ob/W7;

    const-string v2, "SERVICE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/W7;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/yandex/metrica/impl/ob/W7;->b:Lcom/yandex/metrica/impl/ob/W7;

    new-instance v2, Lcom/yandex/metrica/impl/ob/W7;

    const-string v3, "AUTO_INAPP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/W7;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/yandex/metrica/impl/ob/W7;->c:Lcom/yandex/metrica/impl/ob/W7;

    .line 2
    filled-new-array {v0, v1, v2}, [Lcom/yandex/metrica/impl/ob/W7;

    move-result-object v0

    .line 3
    sput-object v0, Lcom/yandex/metrica/impl/ob/W7;->d:[Lcom/yandex/metrica/impl/ob/W7;

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

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/W7;
    .locals 1

    .line 1
    const-class v0, Lcom/yandex/metrica/impl/ob/W7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/W7;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/W7;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/W7;->d:[Lcom/yandex/metrica/impl/ob/W7;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/W7;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/W7;

    return-object v0
.end method
