.class Landroidx/appcompat/app/AlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AlertController$AlertParams;->createListView(Landroidx/appcompat/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AlertController$AlertParams;

.field final synthetic val$dialog:Landroidx/appcompat/app/AlertController;

.field final synthetic val$listView:Landroidx/appcompat/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V
    .locals 0

    .line 1075
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams$4;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p2, p0, Landroidx/appcompat/app/AlertController$AlertParams$4;->val$listView:Landroidx/appcompat/app/AlertController$RecycleListView;

    iput-object p3, p0, Landroidx/appcompat/app/AlertController$AlertParams$4;->val$dialog:Landroidx/appcompat/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/appcompat/app/AlertController$AlertParams$4;"

    const-string v1, "onItemClick"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams$4;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object p1, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams$4;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object p1, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    iget-object p2, p0, Landroidx/appcompat/app/AlertController$AlertParams$4;->val$listView:Landroidx/appcompat/app/AlertController$RecycleListView;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/widget/ListView;"

    const-string v1, "isItemChecked"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result p2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/widget/ListView;"

    const-string v1, "isItemChecked"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    aput-boolean p2, p1, p3

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams$4;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object p1, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Landroidx/appcompat/app/AlertController$AlertParams$4;->val$dialog:Landroidx/appcompat/app/AlertController;

    iget-object p2, p2, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    iget-object p4, p0, Landroidx/appcompat/app/AlertController$AlertParams$4;->val$listView:Landroidx/appcompat/app/AlertController$RecycleListView;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p4, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/widget/ListView;"

    const-string v1, "isItemChecked"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p4, p3}, Landroidx/appcompat/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result p4

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/widget/ListView;"

    const-string v1, "isItemChecked"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/content/DialogInterface$OnMultiChoiceClickListener;"

    const-string v1, "onClick"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, p2, p3, p4}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/content/DialogInterface$OnMultiChoiceClickListener;"

    const-string v1, "onClick"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/AlertController$AlertParams$4;"

    const-string v1, "onItemClick"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
