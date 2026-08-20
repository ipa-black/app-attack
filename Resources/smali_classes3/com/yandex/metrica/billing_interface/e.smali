.class public final enum Lcom/yandex/metrica/billing_interface/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/billing_interface/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/billing_interface/e;

.field public static final enum b:Lcom/yandex/metrica/billing_interface/e;

.field public static final enum c:Lcom/yandex/metrica/billing_interface/e;

.field private static final synthetic d:[Lcom/yandex/metrica/billing_interface/e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/yandex/metrica/billing_interface/e;

    const-string v1, "INAPP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/billing_interface/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/billing_interface/e;->a:Lcom/yandex/metrica/billing_interface/e;

    .line 2
    new-instance v1, Lcom/yandex/metrica/billing_interface/e;

    const-string v2, "SUBS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/billing_interface/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/yandex/metrica/billing_interface/e;->b:Lcom/yandex/metrica/billing_interface/e;

    .line 3
    new-instance v2, Lcom/yandex/metrica/billing_interface/e;

    const-string v3, "UNKNOWN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/billing_interface/e;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/yandex/metrica/billing_interface/e;->c:Lcom/yandex/metrica/billing_interface/e;

    .line 4
    filled-new-array {v0, v1, v2}, [Lcom/yandex/metrica/billing_interface/e;

    move-result-object v0

    .line 5
    sput-object v0, Lcom/yandex/metrica/billing_interface/e;->d:[Lcom/yandex/metrica/billing_interface/e;

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

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/billing_interface/e;
    .locals 1

    .line 1
    const-class v0, Lcom/yandex/metrica/billing_interface/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/billing_interface/e;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/billing_interface/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/billing_interface/e;->d:[Lcom/yandex/metrica/billing_interface/e;

    invoke-virtual {v0}, [Lcom/yandex/metrica/billing_interface/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/billing_interface/e;

    return-object v0
.end method
