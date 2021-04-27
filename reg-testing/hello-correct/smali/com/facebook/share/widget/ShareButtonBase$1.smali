.class Lcom/facebook/share/widget/ShareButtonBase$1;
.super Ljava/lang/Object;
.source "ShareButtonBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/ShareButtonBase;->getShareOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/ShareButtonBase;


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/ShareButtonBase;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/share/widget/ShareButtonBase$1;->this$0:Lcom/facebook/share/widget/ShareButtonBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/share/widget/ShareButtonBase$1;"

    const-string v1, "onClick"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/share/widget/ShareButtonBase$1;->this$0:Lcom/facebook/share/widget/ShareButtonBase;

    invoke-static {v5, p1}, Lcom/facebook/share/widget/ShareButtonBase;->access$000(Lcom/facebook/share/widget/ShareButtonBase;Landroid/view/View;)V

    iget-object p1, p0, Lcom/facebook/share/widget/ShareButtonBase$1;->this$0:Lcom/facebook/share/widget/ShareButtonBase;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/FacebookButtonBase;"

    const-string v1, "getDialog"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/facebook/share/widget/ShareButtonBase;->getDialog()Lcom/facebook/internal/FacebookDialogBase;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/FacebookButtonBase;"

    const-string v1, "getDialog"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/share/widget/ShareButtonBase$1;->this$0:Lcom/facebook/share/widget/ShareButtonBase;

    invoke-virtual {v5}, Lcom/facebook/share/widget/ShareButtonBase;->getShareContent()Lcom/facebook/share/model/ShareContent;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/facebook/internal/FacebookDialogBase;->show(Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/widget/ShareButtonBase$1;"

    const-string v1, "onClick"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
