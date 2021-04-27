.class Landroidx/appcompat/app/AlertController$5;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AlertController;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AlertController;

.field final synthetic val$bottom:Landroid/view/View;

.field final synthetic val$top:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 619
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$5;->this$0:Landroidx/appcompat/app/AlertController;

    iput-object p2, p0, Landroidx/appcompat/app/AlertController$5;->val$top:Landroid/view/View;

    iput-object p3, p0, Landroidx/appcompat/app/AlertController$5;->val$bottom:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/app/AlertController$5;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/app/AlertController$5;->this$0:Landroidx/appcompat/app/AlertController;

    iget-object v5, v5, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Landroidx/appcompat/app/AlertController$5;->val$top:Landroid/view/View;

    iget-object v7, p0, Landroidx/appcompat/app/AlertController$5;->val$bottom:Landroid/view/View;

    invoke-static {v5, v6, v7}, Landroidx/appcompat/app/AlertController;->manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/AlertController$5;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
