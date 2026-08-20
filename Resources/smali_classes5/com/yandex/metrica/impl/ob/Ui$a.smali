.class public final enum Lcom/yandex/metrica/impl/ob/Ui$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/Ui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/Ui$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/ob/Ui$a;

.field public static final enum b:Lcom/yandex/metrica/impl/ob/Ui$a;

.field private static final synthetic c:[Lcom/yandex/metrica/impl/ob/Ui$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ui$a;

    const-string v1, "BAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Ui$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/Ui$a;->a:Lcom/yandex/metrica/impl/ob/Ui$a;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Ui$a;

    const-string v2, "OK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/Ui$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/yandex/metrica/impl/ob/Ui$a;->b:Lcom/yandex/metrica/impl/ob/Ui$a;

    .line 2
    filled-new-array {v0, v1}, [Lcom/yandex/metrica/impl/ob/Ui$a;

    move-result-object v0

    .line 3
    sput-object v0, Lcom/yandex/metrica/impl/ob/Ui$a;->c:[Lcom/yandex/metrica/impl/ob/Ui$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Ui$a;
    .locals 1

    .line 1
    const-class v0, Lcom/yandex/metrica/impl/ob/Ui$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/Ui$a;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/Ui$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/Ui$a;->c:[Lcom/yandex/metrica/impl/ob/Ui$a;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/Ui$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/Ui$a;

    return-object v0
.end method
