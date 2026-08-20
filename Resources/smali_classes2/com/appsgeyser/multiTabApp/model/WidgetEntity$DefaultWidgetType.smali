.class public final enum Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;
.super Ljava/lang/Enum;
.source "WidgetEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/model/WidgetEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DefaultWidgetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;

.field public static final enum PAUSED:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;


# direct methods
.method private static synthetic $values()[Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;
    .locals 1

    .line 15
    sget-object v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;->PAUSED:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;

    filled-new-array {v0}, [Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;

    const-string v1, "PAUSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;->PAUSED:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;

    invoke-static {}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;->$values()[Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;

    move-result-object v0

    sput-object v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;->$VALUES:[Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;
    .locals 1

    .line 15
    const-class v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;
    .locals 1

    .line 15
    sget-object v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;->$VALUES:[Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;

    invoke-virtual {v0}, [Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;

    return-object v0
.end method
