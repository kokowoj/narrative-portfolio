VAR knows_bench = false
VAR found_wallet = false
VAR asked_ticket = false
VAR asked_wallet = false
VAR checked_bag = false
VAR asked_staff = false

-> opening

=== opening ===

The station is nearly empty. You check the clock. The last train leaves in ten minutes.

A stranger approaches you, holding a small bag.

"Excuse me. I lost my ticket, and I think I left my wallet outside. Could you help me find it?"

You look toward the platform. You still have time, but not much.

+ [Agree to help the stranger.] -> help
+ [Politely refuse to help.] -> refuse
+ [Leave the conversation without answering.] -> leave


=== help ===

"Thank you," the stranger says, looking relieved.

You decide to help look for their missing belongings before the last train arrives.

"We should figure out where you last had them," you suggest.

-> hub


=== hub ===

The stranger stands beside you, looking worried.

What should you do next?

+ {not asked_ticket} [Ask about the missing ticket.] -> ticket
+ {not asked_wallet} [Ask about the missing wallet.] -> wallet
+ {not knows_bench} [Ask where they last saw their belongings.] -> last_seen
+ {not checked_bag} [Help check their bag.] -> bag
+ {not asked_staff} [Ask station staff for help.] -> staff
+ {knows_bench and not found_wallet} [Search near the bench outside.] -> search_bench
+ [Stop searching and catch the train.] -> stop_helping


=== ticket ===

"Do you remember where you last had your ticket?" you ask.

"I had it when I first got to the station," the stranger replies.

"I might have put it in my wallet, but I can't remember."

~ asked_ticket = true

You realize finding the wallet might solve both problems.

+ [Continue searching.] -> hub


=== wallet ===

"Are you sure your wallet is outside?" you ask.

"I think so. I remember taking it out before I walked into the station."

The stranger checks their pockets again.

"No luck. It has to be somewhere."

~ asked_wallet = true

+ [Continue searching.] -> hub


=== last_seen ===

"Where were you before you came inside?" you ask.

The stranger thinks for a moment.

"I was sitting on a bench near the entrance. I might have left my wallet there."

"Then we should check that bench," you suggest.

~ knows_bench = true

You now have a possible location for the missing wallet.

+ [Continue searching.] -> hub


=== bag ===

"Let's check your bag one more time," you suggest.

You help the stranger look through their belongings.

They pull out a phone, a notebook, and a few other small items.

Unfortunately, neither the ticket nor the wallet is there.

~ checked_bag = true

"Well, at least we know it's not in my bag," the stranger says.

+ [Continue searching.] -> hub


=== staff ===

You approach the information desk with the stranger.

"Excuse me, we're looking for a missing wallet and train ticket," you explain.

{knows_bench: "I was sitting near the bench outside," the stranger adds. | "I'm not sure where I lost them," the stranger admits.}

The staff member checks the lost-and-found box.

"I'm sorry, nothing has been turned in yet."

~ asked_staff = true

{knows_bench: "Maybe you should check that bench before your train leaves," the staff member suggests. | "Try remembering the last place you sat or stopped," the staff member suggests.}

+ [Continue searching.] -> hub


=== search_bench ===

You walk toward the station entrance together.

After a few minutes, you spot a wallet underneath the bench.

"That's it!" the stranger says. "I really appreciate your help."

~ found_wallet = true

The stranger opens the wallet and checks inside.

{asked_ticket: "And my ticket is still in here! I knew I must have put it somewhere." | "Wait, my ticket is in here too! I completely forgot."}

An announcement echoes through the station.

"The final train will be departing shortly."

"We should hurry!" you say.

+ [Run back to the platform together.] -> success


=== success ===

You hurry back and catch the train just before the doors close.

"Thank you again," the stranger says. "I don't think I would have found everything without your help."

You sit down as the train pulls away from the station.

At least you were able to help someone before heading home.

-> END


=== stop_helping ===

You glance at the station clock.

"I'm sorry, but I really need to catch my train," you explain.

The stranger nods.

"I understand. Thank you for trying to help."

You head back toward the platform.

As the train pulls away, you hope the stranger eventually finds their missing belongings.

-> END


=== refuse ===

"Sorry, I really can't miss this train," you explain.

The stranger nods. "I understand. Thanks anyway."

You head to the platform and board the train.

As it pulls away, you wonder if someone else stopped to help.

-> END


=== leave ===

You glance at the clock and quietly step away.

The stranger doesn't follow you.

You decide to wait on the other side of the platform until the train arrives.

A few minutes later, you board and head home.

-> END