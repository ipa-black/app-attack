.class public Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;
.super Ljava/lang/Object;
.source "MenuStructure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;
    }
.end annotation


# static fields
.field public static final INVALID_RESOURCE_ID:I = -0xf4434

.field static menuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    .line 15
    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a0319

    const v3, 0x7f080205

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a0314

    const v3, 0x7f0801d7

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a031c

    const v3, 0x7f080208

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a0311

    const v3, 0x7f080201

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a0316

    const v3, 0x7f0801fd

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a031d

    const v3, 0x7f080203

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a0313

    const v3, 0x7f0801fa

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a0317

    const v3, 0x7f0801fb

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a031a

    const v3, 0x7f0801ff

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a0312

    const v3, 0x7f080202

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a0318

    const v3, 0x7f080200

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a0315

    const v3, 0x7f0801f9

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    const v2, 0x7f0a031b

    const v3, 0x7f080207

    invoke-direct {v1, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIconResourceIdByItemId(I)I
    .locals 3

    .line 59
    sget-object v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;->menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;

    .line 60
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;->getItemId()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 61
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;->getIconResourceId()I

    move-result p0

    return p0

    :cond_1
    const p0, -0xf4434

    return p0
.end method
